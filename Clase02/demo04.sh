#!/bin/bash
#Ejemplo 5: asignación de variables

echo -n "Asigno a una variable la cadena 'demo*' y muestro la variable"
read
nombre="demo*"
echo $nombre
echo -n "Ahora muestro la misma variable encerrada entre comillas dobles"
read
echo "$nombre"
echo -n "Ahora muestro la misma variable encerrada entre comillas simples"
read
echo '$nombre'
exit 0