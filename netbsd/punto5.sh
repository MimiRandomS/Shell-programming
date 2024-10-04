#!/bin/sh
clear

if [ "$#" -ne 2 ]; then
    echo "Uso: $0 ruta permisos"
    exit 1
fi

ruta="$1"
permisos="$2"

echo "Buscando archivos en '${ruta}' con permisos '${permisos}'..."
find "$ruta" -type f -perm "$permisos" -exec ls -l {} + | awk '{print $9}'
