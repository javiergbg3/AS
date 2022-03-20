#Javier Gonzalez Blanco 815579 Alex Garcia Rodriguez 817567
#!/bin/bash
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
