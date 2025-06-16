#!/bin/bash

# Script para ejecutar compare.py usando el entorno virtual

# Obtener el directorio donde se encuentra este script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Activar el entorno virtual
source "$SCRIPT_DIR/env/bin/activate"

# Ejecutar el script de Python con los argumentos proporcionados
python "$SCRIPT_DIR/compare.py" "$@"

# Desactivar el entorno virtual al finalizar
deactivate
