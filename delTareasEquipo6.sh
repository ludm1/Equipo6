#!/bin/bash
echo "Visualizacion de Tareas Diarias:"
cat tareasDiarias.txt
echo " "
echo "Ingrese la cantidad de lineas que desea eliminar:"
read lineas_eliminar
total_lineas=$(wc -l < tareasDiarias.txt)
total_lineas=$((total_lineas + 1))
lineas_a_conservar=$((total_lineas - lineas_eliminar))

sed -i "${lineas_a_conservar},${total_lineas}d" tareasDiarias.txt

echo "Se ha eliminado $lineas_eliminar lineas exitosamente!"
echo " "
echo "Tareas Diarias quedo modificada de la siguiente forma:"
cat tareasDiarias.txt