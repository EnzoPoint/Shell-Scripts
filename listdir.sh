#!/bin/bash
#listedir.sh


if [ $# -ne 1 ]; then
  	echo "Utilisation : $0 <paramètre>"
	exit 1;
fi;

if [ ! -s "$1" ]; then
   echo "$1 n'existe pas"
   exit
fi

command=$(ls "$1")

echo "####### fichiers dans $1"

for item in $command
        do
                if [ -f "$1/$item" ]; then
			echo "$item"
                fi
        done
	echo "####### repertoires dans $1"
        for item in $command
		do
			if [ -d "$1/$item" ]; then
                		echo "$item"
		        fi
		done
