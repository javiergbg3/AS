#!/bin/bash
#815579, Gonzalez Blanco, Javier, [T], [1], [B]
#817567, García Rodríguez, Alex, [T], [1], [B]
echo -n 'Introduzca el nombre del fichero: '
read var1
lectura="-"
escritura="-"
ejecucion="-"
if [ -f $var1 ]
then
if [[ -r "$var1" ]]; then
	lectura="r"
fi
if [[ -w "$var1" ]]; then
	escritura="w"
fi
if [[ -x "$var1" ]]; then
	ejecucion="x"
fi
 
   echo "Los permisos del archivo $var1 son: $lectura$escritura$ejecucion"
   
else
   echo "$var1 no existe"
fi 
