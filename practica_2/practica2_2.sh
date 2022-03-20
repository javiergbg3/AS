#!/bin/bash
#815579, Gonzalez Blanco, Javier, [T], [1], [B]
#817567, García Rodríguez, Alex, [T], [1], [B]
for par in "$@"
do
	if [[ -f "$par" ]]
	then
		more "$par"
	else
		echo "$par no es un fichero"
	fi
done
