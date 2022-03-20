#!/bin/bash
#815579, Gonzalez Blanco, Javier, [T], [1], [B]
#817567, García Rodríguez, Alex, [T], [1], [B]
#!/bin/bash
if [[ $# -ne 1 ]]; then
	echo "Sintaxis: practica2_3.sh <nombre_archivo>" 
	exit 1
fi
if [[ -f $1   ]]; then
	chmod u+x "$1"
	chmod g+x "$1"
	echo "$(stat -c "%A" "$1")"
else
	echo "$1 no existe"
fi
