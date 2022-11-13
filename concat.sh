#!/bin/bash

if [ $# -ne 2 ]; then
	echo "Vous devez entrez au moins 2 paramètres";
else
	CONCAT="$1$2"
	echo $CONCAT
fi
