import pandas as pd
import json
from deepdiff import DeepDiff
import re
import numpy as np

def load_json_safe(raw):
    """
    Intenta cargar una cadena como JSON, manejando casos problemáticos y preservando emojis.
    """
    # Manejar valores nulos, NaN o no string
    if pd.isna(raw) or raw is None:
        return None
    
    if not isinstance(raw, str):
        return None
        
    # Eliminar prefijos como 'object:' o 'new_data:'
    json_text = re.sub(r'^(object:|new_data:)', '', raw.strip())
    
    try:
        # Primera opción: intentar cargar directamente
        return json.loads(json_text)
    except json.JSONDecodeError:
        try:
            # Segunda opción: eliminar caracteres de control inválidos pero preservar emojis
            # Esto elimina caracteres de control no imprimibles (0-31) excepto \n, \r, \t
            # pero mantiene caracteres Unicode como emojis
            cleaned_text = ''
            for ch in json_text:
                if ord(ch) >= 32 or ch in '\n\r\t':
                    cleaned_text += ch
                else:
                    # Reemplazar caracteres de control con espacio
                    cleaned_text += ' '
            
            return json.loads(cleaned_text)
        except Exception:
            # Tercera opción: usar un enfoque más agresivo para caracteres problemáticos
            try:
                # Reemplazar secuencias de escape Unicode inválidas
                pattern = r'\\u[0-9a-fA-F]{0,3}[^0-9a-fA-F]'
                cleaned_text = re.sub(pattern, ' ', cleaned_text)
                
                # Intentar reparar comillas no escapadas dentro de strings
                cleaned_text = re.sub(r'(?<!\\)"(?!,|\s*}|\s*]|\s*:)', '\\"', cleaned_text)
                
                return json.loads(cleaned_text)
            except Exception:
                # Si todo falla, retornar None
                return None

def describe_diff(diff_result):
    """Convierte el resultado de DeepDiff en una lista legible de diferencias clave"""
    if not diff_result:
        return "No differences"
    output = []
    for change_type, changes in diff_result.items():
        for change in changes:
            output.append(f"{change_type}: {change}")
    return "\n".join(output)

def compare_json_columns(excel_path, output_path=None):
    df = pd.read_excel(excel_path)
    
    results = []
    valid_count = 0
    invalid_count = 0
    
    for idx, row in df.iterrows():
        json_a = load_json_safe(row.get("object"))
        json_b = load_json_safe(row.get("new_data"))

        if json_a is None or json_b is None:
            results.append("Invalid JSON in one or both columns")
            invalid_count += 1
        else:
            valid_count += 1
            diff = DeepDiff(json_a, json_b, ignore_order=True)
            results.append(describe_diff(diff))

    df["differences"] = results
    
    print(f"Procesamiento completado:")
    print(f"- Filas con JSON válido: {valid_count}")
    print(f"- Filas con JSON inválido: {invalid_count}")
    print(f"- Total de filas: {len(df)}")
    print(f"- Porcentaje de éxito: {valid_count/len(df)*100:.2f}%")

    if output_path:
        df.to_excel(output_path, index=False)
        print(f"✔ Output saved to {output_path}")
    else:
        print(df[["object", "new_data", "differences"]].head())

    return df

# Ejemplo de ejecución
if __name__ == "__main__":
    compare_json_columns("CUST-6883 Oasis 2215  whodunit v2.xlsx", "CUST-6883_diff_results_fixed.xlsx")
