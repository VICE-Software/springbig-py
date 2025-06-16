#!/usr/bin/env python3
"""
Explorador de Esquema de Base de Datos Springbig

Este script permite explorar y visualizar la información del esquema de la base de datos
de Springbig generada por el analizador DDL.
"""

import json
import argparse
import sys
from pathlib import Path
from collections import Counter, defaultdict
import textwrap


class SchemaExplorer:
    """
    Clase para explorar y visualizar la información del esquema de base de datos.
    """

    def __init__(self, schema_file):
        """
        Inicializa el explorador con la ruta al archivo JSON del esquema.
        
        Args:
            schema_file (str): Ruta al archivo JSON del esquema
        """
        self.schema_file = schema_file
        self.schema_data = self._load_schema()
        
    def _load_schema(self):
        """
        Carga el archivo JSON del esquema.
        
        Returns:
            dict: Datos del esquema
        """
        try:
            with open(self.schema_file, 'r', encoding='utf-8') as f:
                return json.load(f)
        except Exception as e:
            print(f"Error al cargar el archivo JSON: {e}")
            sys.exit(1)
    
    def get_table_info(self, table_name):
        """
        Obtiene información detallada sobre una tabla específica.
        
        Args:
            table_name (str): Nombre de la tabla
            
        Returns:
            dict: Información de la tabla
        """
        for table in self.schema_data['tables']:
            if table['name'].lower() == table_name.lower():
                return table
        return None
    
    def list_tables(self, pattern=None):
        """
        Lista todas las tablas que coinciden con un patrón.
        
        Args:
            pattern (str, optional): Patrón para filtrar tablas
            
        Returns:
            list: Lista de nombres de tablas
        """
        tables = [table['name'] for table in self.schema_data['tables']]
        if pattern:
            tables = [t for t in tables if pattern.lower() in t.lower()]
        return tables
    
    def get_table_relationships(self, table_name):
        """
        Obtiene las relaciones de una tabla específica.
        
        Args:
            table_name (str): Nombre de la tabla
            
        Returns:
            list: Lista de relaciones
        """
        relationships = []
        for rel in self.schema_data.get('relationships', []):
            if rel['source_table'].lower() == table_name.lower():
                relationships.append({
                    'type': 'outgoing',
                    'from_column': rel['source_column'],
                    'to_table': rel['target_table'],
                    'to_column': rel['target_column']
                })
            elif rel['target_table'].lower() == table_name.lower():
                relationships.append({
                    'type': 'incoming',
                    'from_table': rel['source_table'],
                    'from_column': rel['source_column'],
                    'to_column': rel['target_column']
                })
        return relationships
    
    def get_data_types_summary(self):
        """
        Obtiene un resumen de los tipos de datos utilizados en el esquema.
        
        Returns:
            dict: Resumen de tipos de datos
        """
        data_types = []
        for table in self.schema_data['tables']:
            for column in table.get('columns', []):
                if 'data_type' in column:
                    data_type = column['data_type'].split()[0]
                    data_types.append(data_type)
        
        return dict(Counter(data_types))
    
    def get_reporting_suggestions(self, category=None):
        """
        Obtiene sugerencias de reportes, opcionalmente filtradas por categoría.
        
        Args:
            category (str, optional): Categoría para filtrar sugerencias
            
        Returns:
            list: Lista de sugerencias de reportes
        """
        suggestions = self.schema_data.get('reporting_suggestions', [])
        if category:
            suggestions = [s for s in suggestions if category.lower() in s['category'].lower()]
        return suggestions
    
    def generate_schema_summary(self):
        """
        Genera un resumen del esquema de la base de datos.
        
        Returns:
            dict: Resumen del esquema
        """
        tables_count = self.schema_data.get('tables_count', 0)
        relationships_count = len(self.schema_data.get('relationships', []))
        
        # Contar columnas
        columns_count = 0
        for table in self.schema_data.get('tables', []):
            columns_count += len(table.get('columns', []))
        
        # Tablas más grandes (por número de columnas)
        tables_by_columns = sorted(
            [(table['name'], len(table.get('columns', []))) for table in self.schema_data.get('tables', [])],
            key=lambda x: x[1],
            reverse=True
        )[:10]
        
        # Tablas con más relaciones
        table_relationships = defaultdict(int)
        for rel in self.schema_data.get('relationships', []):
            table_relationships[rel['source_table']] += 1
            table_relationships[rel['target_table']] += 1
        
        tables_by_relationships = sorted(
            table_relationships.items(),
            key=lambda x: x[1],
            reverse=True
        )[:10]
        
        return {
            'tables_count': tables_count,
            'columns_count': columns_count,
            'relationships_count': relationships_count,
            'tables_by_columns': tables_by_columns,
            'tables_by_relationships': tables_by_relationships,
            'data_types': self.get_data_types_summary()
        }
    
    def print_table_info(self, table_name):
        """
        Imprime información detallada sobre una tabla específica.
        
        Args:
            table_name (str): Nombre de la tabla
        """
        table_info = self.get_table_info(table_name)
        if not table_info:
            print(f"No se encontró la tabla '{table_name}'")
            return
        
        print(f"\n{'=' * 80}")
        print(f"TABLA: {table_info['name']}")
        print(f"{'=' * 80}")
        
        print("\nCOLUMNAS:")
        print(f"{'-' * 80}")
        print(f"{'NOMBRE':<30} {'TIPO DE DATO':<30} {'NULLABLE':<10} {'CLAVE PRIMARIA':<15}")
        print(f"{'-' * 80}")
        for column in table_info.get('columns', []):
            name = column.get('name', '')
            data_type = column.get('data_type', '')
            nullable = 'Sí' if column.get('nullable', True) else 'No'
            is_primary = 'Sí' if column.get('is_primary_key', False) else 'No'
            
            print(f"{name:<30} {data_type:<30} {nullable:<10} {is_primary:<15}")
        
        relationships = self.get_table_relationships(table_name)
        if relationships:
            print("\nRELACIONES:")
            print(f"{'-' * 80}")
            for rel in relationships:
                if rel['type'] == 'outgoing':
                    print(f"→ {table_name}.{rel['from_column']} → {rel['to_table']}.{rel['to_column']}")
                else:
                    print(f"← {rel['from_table']}.{rel['from_column']} → {table_name}.{rel['to_column']}")
        
        print(f"\n{'=' * 80}\n")
    
    def print_schema_summary(self):
        """
        Imprime un resumen del esquema de la base de datos.
        """
        summary = self.generate_schema_summary()
        
        print(f"\n{'=' * 80}")
        print(f"RESUMEN DEL ESQUEMA DE LA BASE DE DATOS SPRINGBIG")
        print(f"{'=' * 80}")
        
        print(f"\nTotal de tablas: {summary['tables_count']}")
        print(f"Total de columnas: {summary['columns_count']}")
        print(f"Total de relaciones: {summary['relationships_count']}")
        
        print("\nTablas con más columnas:")
        print(f"{'-' * 80}")
        for table, count in summary['tables_by_columns']:
            print(f"{table:<50} {count} columnas")
        
        print("\nTablas con más relaciones:")
        print(f"{'-' * 80}")
        for table, count in summary['tables_by_relationships']:
            print(f"{table:<50} {count} relaciones")
        
        print("\nTipos de datos utilizados:")
        print(f"{'-' * 80}")
        for data_type, count in summary['data_types'].items():
            print(f"{data_type:<20} {count} veces")
        
        print(f"\n{'=' * 80}\n")
    
    def print_reporting_suggestions(self, category=None):
        """
        Imprime sugerencias de reportes, opcionalmente filtradas por categoría.
        
        Args:
            category (str, optional): Categoría para filtrar sugerencias
        """
        suggestions = self.get_reporting_suggestions(category)
        
        if not suggestions:
            print(f"No se encontraron sugerencias de reportes{f' para la categoría {category}' if category else ''}")
            return
        
        print(f"\n{'=' * 80}")
        print(f"SUGERENCIAS DE REPORTES{f' - CATEGORÍA: {category.upper()}' if category else ''}")
        print(f"{'=' * 80}")
        
        for suggestion in suggestions:
            print(f"\nCATEGORÍA: {suggestion['category']}")
            print(f"{'-' * 80}")
            
            print("Reportes sugeridos:")
            for report in suggestion['reports']:
                print(f"  • {report}")
            
            print("\nTablas relacionadas:")
            for table in suggestion['related_tables']:
                print(f"  • {table}")
            
            if 'possible_queries' in suggestion:
                print("\nConsultas de ejemplo:")
                for query in suggestion['possible_queries']:
                    wrapped_query = textwrap.fill(query, width=76, initial_indent="  ", subsequent_indent="    ")
                    print(wrapped_query)
            
            print(f"\n{'-' * 80}")
        
        print(f"\n{'=' * 80}\n")


def main():
    """Función principal del script."""
    parser = argparse.ArgumentParser(description='Explora y visualiza la información del esquema de la base de datos de Springbig.')
    parser.add_argument('schema_file', help='Ruta al archivo JSON del esquema')
    parser.add_argument('--table', '-t', help='Mostrar información de una tabla específica')
    parser.add_argument('--list', '-l', action='store_true', help='Listar todas las tablas')
    parser.add_argument('--pattern', '-p', help='Filtrar tablas por patrón')
    parser.add_argument('--summary', '-s', action='store_true', help='Mostrar resumen del esquema')
    parser.add_argument('--reports', '-r', action='store_true', help='Mostrar sugerencias de reportes')
    parser.add_argument('--category', '-c', help='Filtrar sugerencias de reportes por categoría')
    
    args = parser.parse_args()
    
    explorer = SchemaExplorer(args.schema_file)
    
    if args.table:
        explorer.print_table_info(args.table)
    elif args.list:
        tables = explorer.list_tables(args.pattern)
        print("\nTABLAS ENCONTRADAS:")
        print(f"{'-' * 80}")
        for table in sorted(tables):
            print(table)
        print(f"\nTotal: {len(tables)} tablas")
    elif args.summary:
        explorer.print_schema_summary()
    elif args.reports:
        explorer.print_reporting_suggestions(args.category)
    else:
        # Si no se especifica ninguna opción, mostrar el resumen
        explorer.print_schema_summary()


if __name__ == '__main__':
    main()
