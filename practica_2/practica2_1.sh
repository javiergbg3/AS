#!/bin/bash
#815579, Gonzalez Blanco, Javier, [T], [1], [B]
#817567, García Rodríguez, Alex, [T], [1], [B]
lec="-"
esc="-"
ej="-"
echo -n "Introduzca el nombre del fichero: "
read archivo
if [ -f $archivo ]
then
if [[ -r "$archivo" ]]
then
	lec="r"
fi
if [[ -w "$archivo" ]]
then
	esc="w"
fi
if [[ -x "$archivo" ]]
then
	ej="x"
fi

	echo "Los permisos del archivo $archivo son: $lec$esc$ej"

else
	echo "$archivo no existe"
fi
