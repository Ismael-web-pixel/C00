#!/bin/bash

# Script pour vérifier si un fichier existe

if [ -f "$1" ]; then
  echo "Le fichier existe."
else
  echo "Le fichier n'existe pas."
fi
