#!/bin/bash

echo "Introducca una tecla: "
read tecla
char=$(echo "$tecla" | cut -c1)
if [[ $char = [A-Za-z] ]]
then
	echo "$char es una letra"
elif [[ $char = [0-9] ]]
then
	echo "$char es un numero"
else
	echo "$char es un caracter especial"
fi
