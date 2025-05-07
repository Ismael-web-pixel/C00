#!/bin/bash

# Script pour vérifier si un fichier existe
echo "Entrez le nom du fichier."
read filename

if [ -f "$filename" ]; then
  echo "Le fichier '$filename' existe."
else
  echo "Le fichier '$filename' n'existe pas."
fi

exit 0