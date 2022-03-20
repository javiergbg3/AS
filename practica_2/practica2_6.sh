
#!/bin/bash

DIR=$(ls -d -t */ | egrep bin[a-zA-Z0-9][a-zA-Z0-9][a-zA-Z0-9])
DIR=bin013
for i in $(ls); do
if [[ -x "$i"&& -f "$i" ]]; then
echo "$i"
mv $i $DIR/
fi
done
