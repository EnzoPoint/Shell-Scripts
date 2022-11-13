#!/bin/bash

echo "Bonjour, vous avez rentré $# paramètre(s)";
echo "Le nom du script est $(basename "$0")";
echo "Le 3ème paramètres est $3";
if [ $# -gt 0 ]; then 
echo "Voici la liste des paramètres $@";
fi
