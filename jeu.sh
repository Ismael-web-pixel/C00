#!/bin/bash

# Générer un nombre magique aléatoire entre 1 et 20
nombre_magique=$(( ( RANDOM % 20 ) + 1 ))

echo "Bienvenue dans Terminal Hero !"
echo "Devine le nombre magique (entre 1 et 20) :"

while true; do
    read -p "Entrez votre proposition : " guess

    # Vérifie si l'entrée est bien un nombre
    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        echo "Veuillez entrer un nombre valide."
        continue
    fi

    # Vérifie si l'utilisateur a deviné le nombre exact
    if [ "$guess" -eq "$nombre_magique" ]; then
        echo "Bravo ! Tu as trouvé le nombre magique 🎉"
        break
    elif [ "$guess" -lt "$nombre_magique" ]; then
        echo "C'est plus grand"
    else
        echo "C'est plus petit"
    fi
done
