#!/bin/bash
# script test-fichier

if [ $# -ne 1 ]; then
  	echo "Utilisation : $0 <paramètre>"
	exit 1;
fi;

if [ ! -s "$1" ]; then
   echo "$1 n'existe pas"
   exit
fi

a=$(stat -c%A "$1")
p=$(stat -c%U "$1")

if [ -d "$1" ]; then	
	echo "Le fichier $1 est un répertoire";
	d=${a:1:3}
    	if [ $d == --- ]
    	then echo -n " rien"
    	else
	echo -n "\"$1\" est accesible par ($p) en"
       		[[ $d == r?? ]] && echo -n " lecture"
        	[[ $d == ?w? ]] && echo -n " écriture"
        	[[ $d == ??x ]] && echo -n " exécution"
    	fi
	echo
elif [ -f "$1" ]; then
	echo "Le fichier $1 est un fichier orindaire qui n'est pas vide";
        d=${a:1:3}
        if [ $d == --- ]
        then echo -n " rien"
        else
        echo -n "\"$1\" est accesible par ($p) en"
                [[ $d == r?? ]] && echo -n " lecture"
                [[ $d == ?w? ]] && echo -n " écriture"
                [[ $d == ??x ]] && echo -n " exécution"
        fi
        echo
fi
