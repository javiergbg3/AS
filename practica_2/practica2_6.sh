#!/bin/bash
#815579, Gonzalez Blanco, Javier, [T], [1], [B]
#817567, García Rodríguez, Alex, [T], [1], [B]
num=0
DIR=$(ls $HOME/* -d -t | egrep 'bin[a-zA-Z0-9][a-zA-Z0-9][a-zA-Z0-9]' | tail -1)
if [ -z "$DIR" ] ; then
	mkdtemp "$HOME/binAAA"
	directorio="$HOME/binAAA"
fi
echo "Directorio destino de copia: $DIR"
for i in $(ls); do
if [[ -x "$i"&& -f "$i" ]]; then
num=$(expr $num + 1)
cp "./$i" "$DIR/$i"
echo "./$i ha sido copiado a $DIR/$i"
fi
done
if [ $num -eq 0 ] ; then
echo "No se ha copiado ningun archivo"
else
echo "Han sido copiados $num ficheros"
fi
