#!/bin/bash

mkdir -p RTAARCHIVOS_Examen*

grep 'MemTotal' /proc/meminfo > RTAARCHIVOS_Examen/FiltroBasico.txt
sudo dmidecode -t chassis | grep 'Manufacturer' >> RTA_ARCHIVOS_Examen/Filtro_Basico.txt
