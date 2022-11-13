#!/bin/bash
#appreciation.sh

exit=0
while [ $exit -eq 0 ]; do
	echo -n "Entrez une note (q pour quitter)  : "

	read n

	if [ $n = "q" ]; then    

	exit=1

		elif [ $n -lt 10 ]; then

			echo "Insuffisant"

		elif [[ $n -ge 10 && $n -lt 12 ]]; then

			echo "Moyen"

		elif [[ $n -ge 12 && $n -lt 14 ]]; then

			echo "Assez bien"

		elif [[ $n -ge 14 && $n -le 16 ]]; then

			echo "Bien"

		elif [[ $n -ge 18 ]] ; then

			echo "Trés bien"
	fi
done
