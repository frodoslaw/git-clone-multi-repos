#!/bin/sh

readarray array <<< $( cat "$@" )

mkdir -p ~/Git/multiclone && cd ~/Git/multiclone

for element in ${array[@]}
do
  echo "Start clonning repo from $element"
  git clone $element
done
