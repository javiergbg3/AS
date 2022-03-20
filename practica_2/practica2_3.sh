#!/bin/bash

if [ -f $1 ]
then
	chmod u+x "$1"
	chmod g+x "$1"
	stat -c %A "$1"
else
	echo "Sintaxis $0 <nombre_archivo>"
fi
