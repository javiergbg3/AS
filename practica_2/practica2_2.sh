#!/bin/bash

for par in "$@"
do
	if [[ -f "$par" ]]
	then
		more "$par"
	else
		echo "$par no es un fichero"
	fi
done
