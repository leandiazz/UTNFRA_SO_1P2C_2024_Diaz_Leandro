#!/bin/bash

Crear la carpeta si no existe
mkdir -p RTAARCHIVOS_Examen*

IPPUBLICA=$(curl -s ifconfig.me)

USUARIO=$(whoami)

HASH_USUARIO=$(openssl passwd -1 $USUARIO)

URL_REPOSITORIO=$(git remote get-url origin)

cat << EOF > RTA_ARCHIVOS_Examen*/Filtro_Avanzado.txt
Mi IP Publica es: $IP_PUBLICA
Mi usuario es: $USUARIO
El Hash de mi Usuario es: $HASH_USUARIO
La URL de mi repositorio es: $URL_REPOSITORIO
EOF
