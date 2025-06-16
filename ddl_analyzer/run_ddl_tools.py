#!/usr/bin/env python3
"""
Script ejecutable para las herramientas de análisis de DDL de Springbig.

Este script sirve como punto de entrada para todas las herramientas de análisis de DDL,
permitiendo ejecutarlas desde una interfaz unificada.
"""

import argparse
import os
import sys
import subprocess
from pathlib import Path


def main():
    """Función principal del script."""
    parser = argparse.ArgumentParser(
        description='Herramientas de análisis de DDL para Springbig',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Ejemplos de uso:
  # Analizar un archivo DDL
  python run_ddl_tools.py analyze "Springbig Prod DDL.sql" --output "springbig_schema_analysis.json"
  
  # Explorar el esquema
  python run_ddl_tools.py explore "springbig_schema_analysis.json" --summary
  
  # Visualizar el esquema
  python run_ddl_tools.py visualize "springbig_schema_analysis.json"
"""
    )
    
    subparsers = parser.add_subparsers(dest='command', help='Comando a ejecutar')
    
    # Subcomando para analyze_ddl.py
    analyze_parser = subparsers.add_parser('analyze', help='Analizar un archivo DDL')
    analyze_parser.add_argument('ddl_file', help='Ruta al archivo DDL')
    analyze_parser.add_argument('--output', '-o', help='Ruta al archivo de salida JSON')
    
    # Subcomando para explore_schema.py
    explore_parser = subparsers.add_parser('explore', help='Explorar el esquema de la base de datos')
    explore_parser.add_argument('schema_file', help='Ruta al archivo JSON del esquema')
    explore_parser.add_argument('--summary', '-s', action='store_true', help='Mostrar resumen del esquema')
    explore_parser.add_argument('--table', '-t', help='Mostrar información de una tabla específica')
    explore_parser.add_argument('--list', '-l', action='store_true', help='Listar todas las tablas')
    explore_parser.add_argument('--pattern', '-p', help='Patrón para filtrar tablas')
    explore_parser.add_argument('--reports', '-r', action='store_true', help='Mostrar sugerencias de reportes')
    explore_parser.add_argument('--category', '-c', help='Categoría de reportes a mostrar')
    
    # Subcomando para visualize_schema.py
    visualize_parser = subparsers.add_parser('visualize', help='Generar visualizaciones del esquema')
    visualize_parser.add_argument('schema_file', help='Ruta al archivo JSON del esquema')
    visualize_parser.add_argument('--output', '-o', help='Directorio donde guardar las visualizaciones')
    visualize_parser.add_argument('--table-sizes', '-t', action='store_true', help='Generar gráfico de tamaños de tablas')
    visualize_parser.add_argument('--data-types', '-d', action='store_true', help='Generar gráfico de tipos de datos')
    visualize_parser.add_argument('--categories', '-c', action='store_true', help='Generar gráfico de categorías de tablas')
    visualize_parser.add_argument('--permissions', '-p', action='store_true', help='Generar gráfico de permisos de usuarios')
    visualize_parser.add_argument('--all', '-a', action='store_true', help='Generar todas las visualizaciones')
    
    args = parser.parse_args()
    
    # Obtener la ruta del directorio actual
    current_dir = Path(__file__).parent.absolute()
    
    if args.command == 'analyze':
        # Ejecutar analyze_ddl.py
        cmd = [sys.executable, str(current_dir / 'analyze_ddl.py'), args.ddl_file]
        if args.output:
            cmd.extend(['--output', args.output])
        subprocess.run(cmd)
    
    elif args.command == 'explore':
        # Ejecutar explore_schema.py
        cmd = [sys.executable, str(current_dir / 'explore_schema.py'), args.schema_file]
        if args.summary:
            cmd.append('--summary')
        if args.table:
            cmd.extend(['--table', args.table])
        if args.list:
            cmd.append('--list')
        if args.pattern:
            cmd.extend(['--pattern', args.pattern])
        if args.reports:
            cmd.append('--reports')
        if args.category:
            cmd.extend(['--category', args.category])
        subprocess.run(cmd)
    
    elif args.command == 'visualize':
        # Ejecutar visualize_schema.py
        cmd = [sys.executable, str(current_dir / 'visualize_schema.py'), args.schema_file]
        if args.output:
            cmd.extend(['--output', args.output])
        if args.table_sizes:
            cmd.append('--table-sizes')
        if args.data_types:
            cmd.append('--data-types')
        if args.categories:
            cmd.append('--categories')
        if args.permissions:
            cmd.append('--permissions')
        if args.all:
            cmd.append('--all')
        subprocess.run(cmd)
    
    else:
        parser.print_help()


if __name__ == '__main__':
    main()
