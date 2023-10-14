#!/bin/bash
if [ "$#" -ne 2 ]; then 
echo "usage: $0 fichier_pkcs11
fichier_copieur"
exit 1
fi

fichier_pkcs11=$1
fichier_copieur=$2

if [ ! -e "$fichier_pkcs11" ]; then
echo "le fichier pkcs11 
'$fichier_pkcs11' n'existe pas."
exit 1
fi

cp "$fichier_pkcs11"
"$fichier_copieur"

echo "le contenu de '$fichier_pkcs11' a été copié dans 
'$fichier_copieur'."  
