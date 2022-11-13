#!/bin/bash
#existuser.sh

if getent passwd $1 > /dev/null 2>&1; then
    echo -n "Oui, l'utilateur existe ! UID : " 
	getent passwd "$1" | cut -d: -f3
else
    echo "Nop, l'utilisateur n'existe pas"
fi
