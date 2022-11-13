#!/bin/bash
#readertext.sh

if [ $# -eq 1 ]; then 
folder=$(find "$1")

for f in $folder; 
do

   if [[ "$(file "$f")" =~ ': ASCII text'$ ]]; then
        echo "Voulez vous visualiser le fichier $f ? (y/n)"
    
    read choix
    
    if [ $choix = "y" ]; then
    
    more $f
    
    elif [ $choix = "n" ]; then
    
    echo "Fichier suivant :"
    
    else
    
    echo "Reponse non valide"
    
    fi
    
    fi
    
done

exit;

else 
    echo "Rentrez un dossier en arguments"
fi
