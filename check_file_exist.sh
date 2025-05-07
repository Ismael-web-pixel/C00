#!/bin/bash

# Script pour vérifier si un fichier existe
echo "Entrez le nom du fichier."
read fichier
if [ -f "$fichier" ]; then
  echo "Le fichier existe."
else
  echo "Le fichier n'existe pas."
fi
