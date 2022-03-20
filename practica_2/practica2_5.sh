#!/bin/bash

echo "Introducca el nombre de un directorio: "
read dir
if [ -d $dir ]
then
arch=$(ls "$dir" -l | grep -v ^[td] | wc -l)
dire=$(ls "$dir" -l | grep -v ^[t-] | wc -l)
echo "El numero de ficheros y directorios en $dir es de $arch y $dire, respectivamente"

else
	echo "$dir no es un directorio"
fi
