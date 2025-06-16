# Analizador de DDL para Springbig

Este script analiza el archivo DDL de la base de datos de Springbig y genera un JSON con información estructurada sobre el esquema, lo que facilita el estudio y comprensión de la estructura de la base de datos.

## Características

- **Análisis de tablas y columnas**: Extrae información detallada sobre tablas, columnas, tipos de datos y restricciones.
- **Identificación de relaciones**: Detecta y documenta relaciones entre tablas (claves foráneas).
- **Sugerencias de reportería**: Genera automáticamente sugerencias de reportes basados en la estructura de la base de datos.
- **Exportación a JSON**: Guarda toda la información en un archivo JSON estructurado para fácil consulta.

## Requisitos

```
pip install -r requirements.txt
```

## Uso

```bash
python analyze_ddl.py <ruta_al_archivo_ddl> [--output <archivo_salida>]
```

### Ejemplos

```bash
# Analizar el DDL y guardar el resultado con el nombre por defecto
python analyze_ddl.py "Springbig Prod DDL.sql"

# Especificar un nombre de archivo de salida personalizado
python analyze_ddl.py "Springbig Prod DDL.sql" --output "springbig_schema_analysis.json"
```

## Estructura del JSON generado

El archivo JSON generado contiene:

- **database**: Nombre de la base de datos
- **tables_count**: Número total de tablas encontradas
- **tables**: Lista de tablas con sus detalles
  - **name**: Nombre de la tabla
  - **columns**: Lista de columnas con tipo de datos, restricciones, etc.
  - **primary_key**: Columna que actúa como clave primaria
  - **constraints**: Restricciones definidas en la tabla
  - **permissions**: Permisos otorgados sobre la tabla
- **relationships**: Lista de relaciones entre tablas
- **reporting_suggestions**: Sugerencias de reportes agrupados por categoría

## Uso para análisis y reportería

El JSON generado puede ser utilizado para:

1. **Entender la estructura de la base de datos**: Visualizar tablas, columnas y relaciones.
2. **Planificar reportes**: Utilizar las sugerencias de reportería como punto de partida.
3. **Desarrollar consultas**: Facilitar la creación de consultas SQL complejas al tener clara la estructura.
4. **Documentación**: Servir como documentación de referencia del esquema de la base de datos.

## Limitaciones

- El analizador utiliza expresiones regulares para extraer información, por lo que podría no capturar construcciones SQL muy complejas o no estándar.
- Las sugerencias de reportería son generales y basadas en nombres de tablas, no en un análisis semántico profundo.
