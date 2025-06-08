import json
import re
import pandas as pd
from deepdiff import DeepDiff

def load_json_safe(raw):
    """Carga un JSON de manera segura, manejando diferentes formatos y problemas comunes"""
    if raw is None or pd.isna(raw):
        return None
    
    # Convertir a string si no lo es
    if not isinstance(raw, str):
        raw = str(raw)
    
    # Eliminar prefijos como 'object:' o 'new_data:'
    json_text = re.sub(r'^(object:|new_data:)', '', raw.strip())
    
    try:
        # Intentar cargar directamente
        return json.loads(json_text)
    except Exception:
        try:
            # Limpiar caracteres de control pero preservar emojis
            cleaned_text = ''
            for ch in json_text:
                if ord(ch) >= 32 or ch in '\n\r\t':
                    cleaned_text += ch
                else:
                    cleaned_text += ' '
            return json.loads(cleaned_text)
        except Exception as e:
            # Si todo falla, mostrar el error y retornar None
            print(f"Error al parsear JSON: {str(e)[:100]}...")
            return None

def describe_diff(diff_result):
    """Convierte el resultado de DeepDiff en una lista legible de diferencias clave"""
    if not diff_result:
        return "No hay diferencias"
    
    output = []
    
    # Manejar valores cambiados
    if 'values_changed' in diff_result:
        for path, change in diff_result['values_changed'].items():
            path_clean = path.replace("root['", "").replace("']", "")
            output.append(f"Cambio en '{path_clean}': '{change['old_value']}' → '{change['new_value']}'")
    
    # Manejar elementos añadidos
    if 'dictionary_item_added' in diff_result:
        for path in diff_result['dictionary_item_added']:
            path_clean = path.replace("root['", "").replace("']", "")
            output.append(f"Campo añadido: '{path_clean}'")
    
    # Manejar elementos eliminados
    if 'dictionary_item_removed' in diff_result:
        for path in diff_result['dictionary_item_removed']:
            path_clean = path.replace("root['", "").replace("']", "")
            output.append(f"Campo eliminado: '{path_clean}'")
    
    # Manejar tipos cambiados
    if 'type_changes' in diff_result:
        for path, change in diff_result['type_changes'].items():
            path_clean = path.replace("root['", "").replace("']", "")
            output.append(f"Cambio de tipo en '{path_clean}': {type(change['old_value']).__name__} → {type(change['new_value']).__name__}")
    
    return "\n".join(output) if output else "Diferencias detectadas pero no categorizadas"

def compare_json_columns(excel_path, output_path=None):
    """Compara columnas JSON en un archivo Excel y guarda los resultados"""
    df = pd.read_excel(excel_path)
    
    results = []
    valid_count = 0
    invalid_count = 0
    null_count = 0
    
    for idx, row in df.iterrows():
        json_a = load_json_safe(row.get("object"))
        json_b = load_json_safe(row.get("new_data"))

        # Caso especial: si new_data es nulo pero object tiene datos
        if json_a is not None and json_b is None and pd.isna(row.get("new_data")):
            results.append("No hay datos nuevos para comparar")
            null_count += 1
        elif json_a is None or json_b is None:
            results.append("JSON inválido en una o ambas columnas")
            invalid_count += 1
        else:
            valid_count += 1
            # Usar ignore_order=True para ignorar el orden en listas
            diff = DeepDiff(json_a, json_b, ignore_order=True, verbose_level=2)
            results.append(describe_diff(diff))

    df["differences"] = results
    
    # Guardar resultados si se especifica una ruta de salida
    if output_path:
        df.to_excel(output_path, index=False)
        print(f"Resultados guardados en: {output_path}")
    
    print(f"Procesamiento completado:")
    print(f"- Filas con JSON válido comparado: {valid_count}")
    print(f"- Filas sin datos nuevos para comparar: {null_count}")
    print(f"- Filas con JSON inválido: {invalid_count}")
    print(f"- Total de filas: {len(df)}")
    print(f"- Porcentaje de éxito (válidos + sin datos): {(valid_count+null_count)/len(df)*100:.2f}%")
    
    return df

# Función para comparar dos JSON directamente (útil para pruebas)
def compare_two_jsons(json_str1, json_str2):
    """Compara dos strings JSON y muestra las diferencias"""
    json1 = load_json_safe(json_str1)
    json2 = load_json_safe(json_str2)
    
    if json1 is None or json2 is None:
        return "Error: Uno o ambos JSON son inválidos"
    
    diff = DeepDiff(json1, json2, ignore_order=True, verbose_level=2)
    return describe_diff(diff)

# Para ejecutar desde línea de comandos
if __name__ == "__main__":
    import sys
    
    if len(sys.argv) > 1:
        excel_file = sys.argv[1]
        output_file = sys.argv[2] if len(sys.argv) > 2 else None
        compare_json_columns(excel_file, output_file)
    else:
        print("Uso: python compare.py archivo_excel.xlsx [archivo_salida.xlsx]")