#!/bin/sh
clear

if [ "$#" -ne 2 ]; then
    echo "Uso: $0 palabra directorio"
    exit 1
fi

palabra=$1
directorio=$2

x=$(grep -n "$palabra" "$directorio")

if [ -z "$x" ]; then
    echo "La palabra '${palabra}' no fue encontrada en '${directorio}'."
else
    echo "La palabra '${palabra}' fue encontrada en: ${x}"
fi
