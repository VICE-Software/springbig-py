#!/usr/bin/env python3
"""
Visualizador de Esquema de Base de Datos Springbig

Este script genera visualizaciones a partir del JSON del esquema de la base de datos
de Springbig para facilitar la comprensión de su estructura.
"""

import json
import argparse
import os
import sys
from collections import defaultdict
import matplotlib.pyplot as plt
import networkx as nx
import pandas as pd
import seaborn as sns
from pathlib import Path


class SchemaVisualizer:
    """
    Clase para generar visualizaciones del esquema de base de datos.
    """

    def __init__(self, schema_file, output_dir=None):
        """
        Inicializa el visualizador con la ruta al archivo JSON del esquema.
        
        Args:
            schema_file (str): Ruta al archivo JSON del esquema
            output_dir (str, optional): Directorio donde guardar las visualizaciones
        """
        self.schema_file = schema_file
        self.schema_data = self._load_schema()
        
        if output_dir:
            self.output_dir = Path(output_dir)
        else:
            self.output_dir = Path(os.path.dirname(schema_file)) / "visualizations"
        
        # Crear directorio de salida si no existe
        os.makedirs(self.output_dir, exist_ok=True)
        
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
    
    def visualize_table_sizes(self):
        """
        Genera un gráfico de barras con las tablas más grandes por número de columnas.
        """
        # Obtener el número de columnas por tabla
        table_sizes = [(table['name'], len(table.get('columns', []))) for table in self.schema_data['tables']]
        table_sizes.sort(key=lambda x: x[1], reverse=True)
        
        # Tomar las 20 tablas más grandes
        top_tables = table_sizes[:20]
        
        # Crear DataFrame para visualización
        df = pd.DataFrame(top_tables, columns=['Tabla', 'Columnas'])
        
        # Crear gráfico
        plt.figure(figsize=(12, 8))
        sns.barplot(x='Columnas', y='Tabla', data=df)
        plt.title('Top 20 Tablas por Número de Columnas')
        plt.tight_layout()
        
        # Guardar gráfico
        output_path = self.output_dir / 'table_sizes.png'
        plt.savefig(output_path)
        plt.close()
        
        print(f"Gráfico de tamaños de tablas guardado en: {output_path}")
        
    def visualize_data_types(self):
        """
        Genera un gráfico de pastel con los tipos de datos más comunes.
        """
        # Contar tipos de datos
        data_types = []
        for table in self.schema_data['tables']:
            for column in table.get('columns', []):
                if 'data_type' in column:
                    # Extraer el tipo base (sin tamaño ni modificadores)
                    data_type = column['data_type'].split()[0]
                    data_types.append(data_type)
        
        # Contar ocurrencias
        type_counts = defaultdict(int)
        for dt in data_types:
            type_counts[dt] += 1
        
        # Convertir a DataFrame
        df = pd.DataFrame(list(type_counts.items()), columns=['Tipo', 'Conteo'])
        df = df.sort_values('Conteo', ascending=False)
        
        # Agrupar tipos poco comunes
        threshold = df['Conteo'].sum() * 0.02  # 2% del total
        top_types = df[df['Conteo'] >= threshold]
        other_count = df[df['Conteo'] < threshold]['Conteo'].sum()
        
        if other_count > 0:
            top_types = pd.concat([top_types, pd.DataFrame([['Otros', other_count]], columns=['Tipo', 'Conteo'])])
        
        # Crear gráfico
        plt.figure(figsize=(10, 8))
        plt.pie(top_types['Conteo'], labels=top_types['Tipo'], autopct='%1.1f%%', startangle=90)
        plt.axis('equal')
        plt.title('Distribución de Tipos de Datos')
        
        # Guardar gráfico
        output_path = self.output_dir / 'data_types.png'
        plt.savefig(output_path)
        plt.close()
        
        print(f"Gráfico de tipos de datos guardado en: {output_path}")
    
    def visualize_table_categories(self):
        """
        Genera un gráfico de barras con las categorías de tablas basadas en las sugerencias de reportes.
        """
        # Extraer tablas por categoría
        categories = {}
        for suggestion in self.schema_data.get('reporting_suggestions', []):
            category = suggestion['category']
            tables = suggestion.get('related_tables', [])
            categories[category] = len(tables)
        
        # Convertir a DataFrame
        df = pd.DataFrame(list(categories.items()), columns=['Categoría', 'Tablas'])
        df = df.sort_values('Tablas', ascending=False)
        
        # Crear gráfico
        plt.figure(figsize=(12, 8))
        sns.barplot(x='Tablas', y='Categoría', data=df)
        plt.title('Número de Tablas por Categoría')
        plt.tight_layout()
        
        # Guardar gráfico
        output_path = self.output_dir / 'table_categories.png'
        plt.savefig(output_path)
        plt.close()
        
        print(f"Gráfico de categorías de tablas guardado en: {output_path}")
    
    def visualize_permissions(self):
        """
        Genera un gráfico de barras con los usuarios con más permisos.
        """
        # Contar permisos por usuario
        user_permissions = defaultdict(int)
        for table in self.schema_data['tables']:
            for permission in table.get('permissions', []):
                grantee = permission.get('grantee', '')
                if grantee:
                    user_permissions[grantee] += 1
        
        # Convertir a DataFrame
        df = pd.DataFrame(list(user_permissions.items()), columns=['Usuario', 'Permisos'])
        df = df.sort_values('Permisos', ascending=False)
        
        # Tomar los 20 usuarios con más permisos
        top_users = df.head(20)
        
        # Crear gráfico
        plt.figure(figsize=(12, 8))
        sns.barplot(x='Permisos', y='Usuario', data=top_users)
        plt.title('Top 20 Usuarios por Número de Permisos')
        plt.tight_layout()
        
        # Guardar gráfico
        output_path = self.output_dir / 'user_permissions.png'
        plt.savefig(output_path)
        plt.close()
        
        print(f"Gráfico de permisos de usuarios guardado en: {output_path}")
    
    def generate_all_visualizations(self):
        """
        Genera todas las visualizaciones disponibles.
        """
        self.visualize_table_sizes()
        self.visualize_data_types()
        self.visualize_table_categories()
        self.visualize_permissions()
        
        print(f"Todas las visualizaciones han sido guardadas en: {self.output_dir}")


def main():
    """Función principal del script."""
    parser = argparse.ArgumentParser(description='Genera visualizaciones del esquema de la base de datos de Springbig.')
    parser.add_argument('schema_file', help='Ruta al archivo JSON del esquema')
    parser.add_argument('--output', '-o', help='Directorio donde guardar las visualizaciones')
    parser.add_argument('--table-sizes', '-t', action='store_true', help='Generar gráfico de tamaños de tablas')
    parser.add_argument('--data-types', '-d', action='store_true', help='Generar gráfico de tipos de datos')
    parser.add_argument('--categories', '-c', action='store_true', help='Generar gráfico de categorías de tablas')
    parser.add_argument('--permissions', '-p', action='store_true', help='Generar gráfico de permisos de usuarios')
    parser.add_argument('--all', '-a', action='store_true', help='Generar todas las visualizaciones')
    
    args = parser.parse_args()
    
    visualizer = SchemaVisualizer(args.schema_file, args.output)
    
    if args.all or not any([args.table_sizes, args.data_types, args.categories, args.permissions]):
        visualizer.generate_all_visualizations()
    else:
        if args.table_sizes:
            visualizer.visualize_table_sizes()
        if args.data_types:
            visualizer.visualize_data_types()
        if args.categories:
            visualizer.visualize_table_categories()
        if args.permissions:
            visualizer.visualize_permissions()


if __name__ == '__main__':
    main()
