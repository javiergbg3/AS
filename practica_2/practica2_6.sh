#!/bin/bash
#815579, Gonzalez Blanco, Javier, [T], [1], [B]
#817567, García Rodríguez, Alex, [T], [1], [B]
num=0
DIR=$(ls $HOME/* -d -t | egrep 'bin[a-zA-Z0-9][a-zA-Z0-9][a-zA-Z0-9]' | tail -1)
if [ -z "$DIR" ] ; then
	
	DIR=$(mktemp -d "$HOME/binXXX")
	echo "Se ha creado el directorio $DIR"
fi
echo "Directorio destino de copia: $DIR"
for i in $(ls); do
if [[ -x "$i" && -f "$i" ]]; then
num=$(expr $num + 1)
cp "$i" "$DIR"
echo "./$i ha sido copiado a $DIR"
fi
done
if [ $num -eq 0 ] ; then
echo "No se ha copiado ningun archivo"
else
echo "Se han copiado $num archivos"
fi
