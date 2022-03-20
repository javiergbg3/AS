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
