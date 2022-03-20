#!/bin/bash
#815579, Gonzalez Blanco, Javier, [T], [1], [B]
#817567, García Rodríguez, Alex, [T], [1], [B]
echo "Introduzca el nombre de un directorio: "
read dir
if [[ -d $dir  ]] ; then
arch=$(ls "$dir" -l | grep  ^[td] | wc -l)
dire=$(ls "$dir" -l | grep  ^[t-] | wc -l)
	echo "El numero de ficheros y directorios en $dir es de $arch y $dire, respectivamente"
else 
echo "$dir no es un directorio"
fi
