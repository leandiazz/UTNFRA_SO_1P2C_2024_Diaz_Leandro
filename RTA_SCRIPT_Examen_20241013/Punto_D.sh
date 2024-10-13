#!/bin/bash

mkdir -p ~/EstructuraAsimetrica

mkdir -p ~/Estructura_Asimetrica/correo ~/Estructura_Asimetrica/clientes

for i in {1..100}; do
    touch ~/Estructura_Asimetrica/correo/cartas$i
    touch ~/EstructuraAsimetrica/clientes/cartas$i
done

for i in {1..10}; do
    touch ~/EstructuraAsimetrica/correo/carteros$i
done
