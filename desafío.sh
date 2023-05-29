#!/bin/bash
echo "Tareas Diarias"
nl tareasDiarias.txt
echo "Que tarea desea eliminar?"
echo "Escriba el numero de la tarea a eliminar: "
read numero
sed -i "${numero}d" tareasDiarias.txt
echo " "
echo "Haz eliminado la tarea $numero exitosamente!"
echo " "
echo "Tareas Diarias quedo modificada de la siguiente forma:"
nl tareasDiarias.txt