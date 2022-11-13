#!/bin/bash
#useradd.sh

if [ $# -eq 0 ]; then 

# Vérifie que l'utilisateur du script est root
if [ "$(id -u)" -ne 0 ]; then
  echo "Vous devez être root pour exécuter ce script"
  exit 1
fi

echo "Quel nom souhaitez vous avoir pour l'utilisateur"

#Recuperation de la saisie
read login 

#Execution du script qui verifie si l'utilisateur existe ou non
./existuser.sh $login 

#On verifie que le script precedent ne trouve pas d'utilisateur
if [ $? -eq 1 ]; then 

    echo "L'utilisateur existe déja"
    
    exit 2
    
fi


read -r -p "Nom: " nom
read -r -p "Prénom: " prenom

read -r -p "GID: " gid
read -r -p "Commentaire: " commentaire
    
home="/home/$login"
while [ -d "$home" ]; do
  read -r -p "Un répertoire home existe déjà pour $login. Veuillez choisir un autre nom: " login
  home="/home/$login"
done

# Ajout de l'utilisateur
useradd -c "$prenom $nom - $commentaire" -d "$home" -g "$gid" -m -u "$uid" "$login"

fi
