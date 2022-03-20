#!/bin/bash
#815579, Gonzalez Blanco, Javier, [T], [1], [B]
#817567, García Rodríguez, Alex, [T], [1], [B]
if [ -f $1 ]
then
	chmod u+x "$1"
	chmod g+x "$1"
	stat -c %A "$1"
else
	echo "Sintaxis $0 <nombre_archivo>"
fi
