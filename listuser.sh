#!/bin/bash
#listuser.sh

if [ $# -eq 0 ]; then 
	awk -F:  '{ if ( $3 > 100 ) print "User: "$1" & UID: "$3""}' /etc/passwd
else 
    echo "Ne pas rentrer d'argument"
fi
