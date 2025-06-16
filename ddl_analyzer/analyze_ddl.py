#!/usr/bin/env python3
"""
Analizador de DDL para Springbig

Este script analiza un archivo DDL de SQL y genera un JSON con información estructurada
sobre el esquema de la base de datos, incluyendo tablas, columnas, tipos de datos,
claves primarias y relaciones.
"""

import re
import json
import argparse
from collections import defaultdict
from pathlib import Path


class DDLAnalyzer:
    """
    Clase para analizar archivos DDL de SQL y extraer información sobre el esquema
    de la base de datos.
    """

    def __init__(self, ddl_file):
        """
        Inicializa el analizador con la ruta al archivo DDL.
        
        Args:
            ddl_file (str): Ruta al archivo DDL
        """
        self.ddl_file = ddl_file
        self.tables = {}
        self.relationships = []
        # Patrón mejorado para capturar definiciones de tablas
        self.table_pattern = re.compile(r'create\s+table\s+if\s+not\s+exists\s+([\w\.]+)\s*\(([\s\S]*?)\)(?:\s*(?:diststyle|sortkey|encode).*?)?;', re.DOTALL | re.IGNORECASE)
        # Patrón mejorado para capturar columnas
        self.column_pattern = re.compile(r'\s*([\w_]+)\s+([\w\(\)\s]+?)(?:\s+encode\s+([\w]+))?(?:\s+(distkey|sortkey))?(?:\s+(not\s+null))?(?:\s+(?:constraint\s+"?([\w\s]+)"?\s+)?(?:primary\s+key))?(?:\s+default\s+(.*?))?(?:,|$)', re.MULTILINE | re.IGNORECASE)
        # Patrón para capturar claves foráneas
        self.foreign_key_pattern = re.compile(r'constraint\s+"?([\w\s]+)"?\s+foreign\s+key\s+\(([\w_]+)\)\s+references\s+([\w\.]+)\s*\(([\w_]+)\)', re.IGNORECASE)
        # Patrón para capturar restricciones
        self.constraint_pattern = re.compile(r'constraint\s+"?([\w\s]+)"?\s+(.*?)(?:,|$)', re.MULTILINE | re.IGNORECASE)
        # Patrón para capturar permisos
        self.grant_pattern = re.compile(r'grant\s+(.*?)\s+on\s+([\w\.]+)\s+to\s+(.*?);', re.IGNORECASE)

    def parse_ddl(self):
        """
        Analiza el archivo DDL y extrae información sobre tablas, columnas y relaciones.
        
        Returns:
            dict: Diccionario con información sobre el esquema de la base de datos
        """
        with open(self.ddl_file, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # Encontrar todas las definiciones de tablas
        table_matches = self.table_pattern.finditer(content)
        
        for match in table_matches:
            table_name = match.group(1)
            table_body = match.group(2)
            
            # Inicializar estructura de la tabla
            self.tables[table_name] = {
                'name': table_name,
                'columns': [],
                'primary_key': None,
                'constraints': [],
                'indexes': [],
                'permissions': []
            }
            
            # Dividir el cuerpo de la tabla en líneas para procesar cada columna
            lines = table_body.split('\n')
            for line in lines:
                line = line.strip()
                if not line or line.startswith('--') or line.startswith('/*'):
                    continue
                
                # Intentar hacer coincidir con el patrón de columna
                col_match = self.column_pattern.match(line)
                if col_match:
                    column_name = col_match.group(1)
                    data_type = col_match.group(2).strip()
                    encoding = col_match.group(3)
                    key_type = col_match.group(4)
                    is_not_null = col_match.group(5) is not None
                    constraint_name = col_match.group(6)
                    default_value = col_match.group(7)
                    
                    # Verificar si es clave primaria
                    is_primary_key = 'primary key' in line.lower() or (constraint_name and 'primary' in line.lower())
                    
                    column_info = {
                        'name': column_name,
                        'data_type': data_type,
                        'nullable': not is_not_null,
                        'encoding': encoding,
                        'key_type': key_type,
                        'default_value': default_value,
                        'is_primary_key': is_primary_key
                    }
                    
                    self.tables[table_name]['columns'].append(column_info)
                    
                    if is_primary_key:
                        self.tables[table_name]['primary_key'] = column_name
                
                # Buscar restricciones de clave foránea
                fk_match = self.foreign_key_pattern.search(line)
                if fk_match:
                    constraint_name = fk_match.group(1)
                    column_name = fk_match.group(2)
                    referenced_table = fk_match.group(3)
                    referenced_column = fk_match.group(4)
                    
                    relationship = {
                        'constraint_name': constraint_name,
                        'source_table': table_name,
                        'source_column': column_name,
                        'target_table': referenced_table,
                        'target_column': referenced_column
                    }
                    
                    self.relationships.append(relationship)
                    self.tables[table_name]['constraints'].append({
                        'name': constraint_name,
                        'type': 'FOREIGN KEY',
                        'column': column_name,
                        'references': f"{referenced_table}({referenced_column})"
                    })
        
        # Analizar permisos
        grant_matches = self.grant_pattern.finditer(content)
        for grant_match in grant_matches:
            permissions = grant_match.group(1)
            table_name = grant_match.group(2)
            grantee = grant_match.group(3)
            
            if table_name in self.tables:
                self.tables[table_name]['permissions'].append({
                    'permissions': permissions,
                    'grantee': grantee
                })
        
        return self._build_schema_info()

    def _build_schema_info(self):
        """
        Construye un diccionario con información estructurada sobre el esquema.
        
        Returns:
            dict: Información estructurada sobre el esquema
        """
        tables_list = []
        for table_name, table_info in self.tables.items():
            tables_list.append({
                'name': table_name,
                'columns': table_info['columns'],
                'primary_key': table_info['primary_key'],
                'constraints': table_info['constraints'],
                'permissions': table_info['permissions']
            })
        
        return {
            'database': 'springbig',
            'tables_count': len(self.tables),
            'tables': tables_list,
            'relationships': self.relationships
        }

    def generate_reporting_suggestions(self, schema_info):
        """
        Genera sugerencias para reportes basados en el esquema de la base de datos.
        
        Args:
            schema_info (dict): Información del esquema
            
        Returns:
            dict: Sugerencias para reportes
        """
        reporting_suggestions = []
        
        # Identificar tablas por categorías específicas de Springbig
        transaction_tables = [t for t in schema_info['tables'] 
                             if any(keyword in t['name'].lower() for keyword in ['transaction', 'sale', 'order', 'payment', 'redemption'])]
        
        member_tables = [t for t in schema_info['tables'] 
                      if any(keyword in t['name'].lower() for keyword in ['member', 'user', 'customer', 'client'])]
        
        campaign_tables = [t for t in schema_info['tables'] 
                          if any(keyword in t['name'].lower() for keyword in ['campaign', 'marketing', 'promotion', 'auto_campaign'])]
        
        merchant_tables = [t for t in schema_info['tables'] 
                         if any(keyword in t['name'].lower() for keyword in ['merchant', 'store', 'location', 'retailer'])]
        
        loyalty_tables = [t for t in schema_info['tables'] 
                        if any(keyword in t['name'].lower() for keyword in ['loyalty', 'reward', 'point', 'program'])]
        
        communication_tables = [t for t in schema_info['tables'] 
                              if any(keyword in t['name'].lower() for keyword in ['sms', 'email', 'notification', 'message', 'communication'])]
        
        # Sugerencias para reportes de transacciones
        if transaction_tables:
            reporting_suggestions.append({
                'category': 'Transacciones y Ventas',
                'reports': [
                    'Análisis de ventas por período y comerciante',
                    'Tendencias de transacciones por tiempo',
                    'Valor promedio de transacción por cliente',
                    'Frecuencia de compra por cliente',
                    'Análisis de redenciones de recompensas',
                    'Impacto de campañas en ventas'
                ],
                'related_tables': [t['name'] for t in transaction_tables],
                'possible_queries': [
                    'SELECT merchant_id, SUM(amount) FROM transactions GROUP BY merchant_id',
                    'SELECT DATE_TRUNC(\'month\', transaction_date) as month, COUNT(*) FROM transactions GROUP BY month ORDER BY month',
                    'SELECT member_id, AVG(amount) FROM transactions GROUP BY member_id'
                ]
            })
        
        # Sugerencias para reportes de miembros
        if member_tables:
            reporting_suggestions.append({
                'category': 'Miembros y Usuarios',
                'reports': [
                    'Demografía de usuarios',
                    'Tasa de retención de clientes',
                    'Segmentación de clientes por valor',
                    'Análisis de comportamiento de usuario',
                    'Crecimiento de base de usuarios por comerciante',
                    'Efectividad de programas de fidelización'
                ],
                'related_tables': [t['name'] for t in member_tables],
                'possible_queries': [
                    'SELECT merchant_id, COUNT(*) FROM members GROUP BY merchant_id',
                    'SELECT created_at, COUNT(*) FROM members GROUP BY DATE_TRUNC(\'month\', created_at)',
                    'SELECT member_id, COUNT(*) FROM transactions GROUP BY member_id ORDER BY COUNT(*) DESC LIMIT 100'
                ]
            })
        
        # Sugerencias para reportes de campañas
        if campaign_tables:
            reporting_suggestions.append({
                'category': 'Campañas y Marketing',
                'reports': [
                    'Efectividad de campañas por tipo',
                    'ROI de campañas de marketing',
                    'Tasa de conversión por campaña',
                    'Análisis de engagement con mensajes',
                    'Comparativa de campañas automáticas vs manuales',
                    'Segmentación y targeting de campañas'
                ],
                'related_tables': [t['name'] for t in campaign_tables],
                'possible_queries': [
                    'SELECT campaign_id, COUNT(*) as sent_count FROM campaign_logs GROUP BY campaign_id',
                    'SELECT campaign_id, SUM(amount) as revenue FROM transactions WHERE campaign_id IS NOT NULL GROUP BY campaign_id',
                    'SELECT auto_campaign_id, COUNT(*) FROM auto_campaign_logs GROUP BY auto_campaign_id'
                ]
            })
        
        # Sugerencias para reportes de comerciantes
        if merchant_tables:
            reporting_suggestions.append({
                'category': 'Comerciantes',
                'reports': [
                    'Comparativa de rendimiento entre comerciantes',
                    'Análisis de crecimiento de base de clientes por comerciante',
                    'Efectividad de campañas por comerciante',
                    'Análisis de retención de clientes por comerciante',
                    'Tendencias de ventas por ubicación'
                ],
                'related_tables': [t['name'] for t in merchant_tables],
                'possible_queries': [
                    'SELECT merchant_id, COUNT(*) as member_count FROM members GROUP BY merchant_id',
                    'SELECT merchant_id, SUM(amount) as total_sales FROM transactions GROUP BY merchant_id',
                    'SELECT merchant_id, COUNT(*) as campaign_count FROM campaigns GROUP BY merchant_id'
                ]
            })
        
        # Sugerencias para reportes de programas de fidelización
        if loyalty_tables:
            reporting_suggestions.append({
                'category': 'Programas de Fidelización',
                'reports': [
                    'Análisis de redención de recompensas',
                    'Efectividad de programas de puntos',
                    'Comportamiento de acumulación de puntos',
                    'Impacto de recompensas en retención de clientes',
                    'Análisis de valor de programas de fidelización'
                ],
                'related_tables': [t['name'] for t in loyalty_tables],
                'possible_queries': [
                    'SELECT reward_id, COUNT(*) as redemption_count FROM reward_redemptions GROUP BY reward_id',
                    'SELECT member_id, SUM(points) as total_points FROM point_transactions GROUP BY member_id',
                    'SELECT merchant_id, AVG(points_per_dollar) FROM merchants GROUP BY merchant_id'
                ]
            })
        
        # Sugerencias para reportes de comunicaciones
        if communication_tables:
            reporting_suggestions.append({
                'category': 'Comunicaciones y Mensajería',
                'reports': [
                    'Análisis de efectividad de SMS vs email',
                    'Tasas de apertura y clics por tipo de mensaje',
                    'Análisis de contenido de mensajes más efectivos',
                    'Optimización de horarios de envío',
                    'Análisis de opt-outs y su impacto'
                ],
                'related_tables': [t['name'] for t in communication_tables],
                'possible_queries': [
                    'SELECT DATE_TRUNC(\'hour\', sent_at) as hour, COUNT(*) FROM sms_logs GROUP BY hour ORDER BY COUNT(*) DESC',
                    'SELECT merchant_id, COUNT(*) as sms_count FROM sms_logs GROUP BY merchant_id',
                    'SELECT campaign_id, COUNT(*) as click_count FROM shortened_urls WHERE clicked = true GROUP BY campaign_id'
                ]
            })
        
        return {
            'reporting_suggestions': reporting_suggestions
        }

    def analyze_and_export(self, output_file=None):
        """
        Analiza el DDL y exporta la información a un archivo JSON.
        
        Args:
            output_file (str, optional): Ruta al archivo de salida. Si no se proporciona,
                                        se utilizará el nombre del archivo DDL con extensión .json.
        
        Returns:
            str: Ruta al archivo JSON generado
        """
        schema_info = self.parse_ddl()
        reporting_suggestions = self.generate_reporting_suggestions(schema_info)
        
        # Combinar información del esquema y sugerencias de reportes
        result = {**schema_info, **reporting_suggestions}
        
        if output_file is None:
            output_file = Path(self.ddl_file).with_suffix('.json')
        
        with open(output_file, 'w', encoding='utf-8') as f:
            json.dump(result, f, indent=2)
        
        return output_file


def main():
    """Función principal del script."""
    parser = argparse.ArgumentParser(description='Analiza un archivo DDL y genera un JSON con información sobre el esquema.')
    parser.add_argument('ddl_file', help='Ruta al archivo DDL')
    parser.add_argument('--output', '-o', help='Ruta al archivo de salida (opcional)')
    
    args = parser.parse_args()
    
    analyzer = DDLAnalyzer(args.ddl_file)
    output_file = analyzer.analyze_and_export(args.output)
    
    print(f"Análisis completado. Información exportada a: {output_file}")


if __name__ == '__main__':
    main()
