# Springbig Py

Este repositorio contiene herramientas para trabajar con datos de Springbig.

## Organización del Repositorio

- **`/`**: Raíz del proyecto con archivos principales
- **`/ddl_analyzer/`**: Herramientas para análisis de esquema de base de datos

## JSON Comparison Tool

A Python utility for analyzing Excel files containing JSON data in specified columns, comparing the structures and identifying differences between them.

### Features

- Compares JSON structures between two columns in an Excel file
- Identifies added, removed, and modified fields
- Handles nested JSON structures and arrays
- Tolerant to malformed JSON with automatic correction attempts
- Generates detailed reports of differences
- Error handling for individual rows without stopping the entire process

### Requirements

- Python 3.9+
- pandas
- openpyxl
- deepdiff

### Installation

```bash
pip install pandas openpyxl deepdiff
```

### Usage

```bash
python compare.py <excel_file> [--output <output_file>] [--object-column <column_name>] [--new-data-column <column_name>]
```

#### Arguments

- `excel_file`: Path to the Excel file containing JSON data
- `--output`: Output file path (default: comparison_results.xlsx)
- `--object-column`: Column name for original JSON data (default: "object")
- `--new-data-column`: Column name for new JSON data (default: "new_data")

#### Example

```bash
python compare.py "CUST-6883 Oasis 2215 whodunit v2.xlsx" --output "comparison_results.xlsx"
```

### Output

The tool generates an Excel or CSV file with the following columns:

- `row_index`: Index of the row in the original file
- `difference_summary`: Human-readable summary of differences
- `object_parsed`: Whether the original JSON was successfully parsed
- `new_data_parsed`: Whether the new JSON was successfully parsed
- `has_differences`: Whether differences were found
- `errors`: Any errors encountered during processing

A log file (`json_comparison.log`) is also generated with detailed information about the processing.

## DDL Analyzer

Un conjunto de herramientas para analizar y visualizar el esquema de la base de datos de Springbig a partir de un archivo DDL SQL.

### Componentes

- **`analyze_ddl.py`**: Extrae información del esquema de un archivo DDL SQL
- **`explore_schema.py`**: Permite explorar y consultar la información del esquema
- **`visualize_schema.py`**: Genera visualizaciones gráficas del esquema

### Uso

Consulta el archivo [README.md](ddl_analyzer/README.md) en la carpeta `ddl_analyzer` para obtener información detallada sobre cómo utilizar estas herramientas.

### Visualizaciones

El componente de visualización genera gráficos que muestran:
- Tablas más grandes por número de columnas
- Distribución de tipos de datos
- Categorías de tablas según sugerencias de reportes
- Usuarios con más permisos en la base de datos
