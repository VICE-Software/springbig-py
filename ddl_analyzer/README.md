# Springbig Database Schema Analysis

Este proyecto proporciona herramientas para analizar y visualizar el esquema de la base de datos de Springbig a partir de un archivo DDL SQL.

## Herramientas incluidas

### 1. Analizador de DDL (`analyze_ddl.py`)

Analiza un archivo DDL SQL y genera un JSON estructurado con información sobre el esquema de la base de datos.

**Características:**
- Extracción de tablas, columnas, tipos de datos, claves primarias y restricciones
- Identificación de permisos otorgados en tablas
- Generación de sugerencias de reportes basadas en categorías de tablas
- Análisis de relaciones entre tablas

**Uso:**
```bash
python analyze_ddl.py <ruta_archivo_ddl> [--output <archivo_salida>]
```

### 2. Explorador de Esquema (`explore_schema.py`)

Permite explorar y visualizar la información del esquema de la base de datos generada por el analizador DDL.

**Características:**
- Resumen general del esquema (tablas, columnas, relaciones)
- Información detallada de tablas específicas
- Listado de tablas filtrado por patrón
- Visualización de sugerencias de reportes por categoría

**Uso:**
```bash
# Mostrar resumen general
python explore_schema.py <archivo_json_esquema> --summary

# Ver información de una tabla específica
python explore_schema.py <archivo_json_esquema> --table <nombre_tabla>

# Listar todas las tablas
python explore_schema.py <archivo_json_esquema> --list

# Listar tablas que coincidan con un patrón
python explore_schema.py <archivo_json_esquema> --list --pattern <patrón>

# Ver sugerencias de reportes
python explore_schema.py <archivo_json_esquema> --reports

# Ver sugerencias de reportes de una categoría específica
python explore_schema.py <archivo_json_esquema> --reports --category <categoría>
```

### 3. Visualizador de Esquema (`visualize_schema.py`)

Genera visualizaciones gráficas a partir del JSON del esquema para facilitar la comprensión de la estructura de la base de datos.

**Características:**
- Gráfico de barras con las tablas más grandes por número de columnas
- Gráfico de pastel con los tipos de datos más comunes
- Gráfico de barras con las categorías de tablas
- Gráfico de barras con los usuarios con más permisos

**Uso:**
```bash
# Generar todas las visualizaciones
python visualize_schema.py <archivo_json_esquema> [--output <directorio_salida>]

# Generar visualizaciones específicas
python visualize_schema.py <archivo_json_esquema> --table-sizes
python visualize_schema.py <archivo_json_esquema> --data-types
python visualize_schema.py <archivo_json_esquema> --categories
python visualize_schema.py <archivo_json_esquema> --permissions
```

## Estructura del JSON generado

El archivo JSON generado por el analizador DDL contiene la siguiente estructura:

```json
{
  "database": "nombre_base_datos",
  "tables_count": 123,
  "tables": [
    {
      "name": "nombre_tabla",
      "columns": [
        {
          "name": "nombre_columna",
          "data_type": "tipo_dato",
          "nullable": true/false,
          "encoding": "codificación",
          "key_type": "tipo_clave",
          "default_value": "valor_predeterminado",
          "is_primary_key": true/false
        }
      ],
      "primary_key": "clave_primaria",
      "constraints": [],
      "permissions": [
        {
          "permissions": "permisos",
          "grantee": "usuario"
        }
      ]
    }
  ],
  "relationships": [],
  "reporting_suggestions": [
    {
      "category": "categoría",
      "reports": ["reporte1", "reporte2"],
      "related_tables": ["tabla1", "tabla2"],
      "possible_queries": ["consulta1", "consulta2"]
    }
  ]
}
```

## Categorías de reportes

El análisis identifica las siguientes categorías de reportes:

1. **Transacciones y Ventas**: Análisis de ventas, tendencias de transacciones, valor promedio de transacción, etc.
2. **Miembros y Usuarios**: Demografía de usuarios, tasa de retención, segmentación de clientes, etc.
3. **Campañas y Marketing**: Efectividad de campañas, ROI, tasa de conversión, análisis de engagement, etc.
4. **Comerciantes**: Comparativa de rendimiento, crecimiento de base de clientes, efectividad de campañas, etc.
5. **Programas de Fidelización**: Análisis de redención de recompensas, efectividad de programas de puntos, etc.
6. **Comunicaciones y Mensajería**: Análisis de efectividad de SMS vs email, tasas de apertura y clics, etc.

## Dependencias

```
pandas>=1.3.0
openpyxl>=3.0.9
deepdiff>=5.8.0
argparse>=1.4.0
matplotlib>=3.5.0
networkx>=2.7.0
seaborn>=0.11.0
```

## Instalación

```bash
pip install -r requirements.txt
```

## Flujo de trabajo recomendado

1. Ejecutar el analizador DDL para generar el JSON del esquema:
   ```bash
   python analyze_ddl.py "Springbig Prod DDL.sql" --output "springbig_schema_analysis.json"
   ```

2. Explorar el esquema para entender la estructura de la base de datos:
   ```bash
   python explore_schema.py "springbig_schema_analysis.json" --summary
   ```

3. Generar visualizaciones para una mejor comprensión:
   ```bash
   python visualize_schema.py "springbig_schema_analysis.json"
   ```

4. Explorar las sugerencias de reportes para identificar posibles análisis:
   ```bash
   python explore_schema.py "springbig_schema_analysis.json" --reports
   ```

5. Investigar tablas específicas de interés:
   ```bash
   python explore_schema.py "springbig_schema_analysis.json" --table "members"
   ```

## Limitaciones

- El analizador DDL está diseñado específicamente para el formato de DDL de Springbig y puede no funcionar correctamente con otros formatos.
- Las relaciones entre tablas se infieren a partir de las restricciones de clave foránea y pueden no ser completas.
- Las sugerencias de reportes son generadas automáticamente basadas en nombres de tablas y pueden requerir ajustes manuales.
