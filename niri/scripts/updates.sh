#!/usr/bin/env bash

echo "=============================="
echo "      System Updates"
echo "=============================="
echo

# Pacman updates
echo ">>> Pacman Updates:"
if updates=$(checkupdates 2>/dev/null); then
    if [[ -z "$updates" ]]; then
        echo "✔ No pacman updates"
    else
        echo "$updates"
    fi
else
    echo "No update yet, please double check.."
fi

echo
echo "------------------------------"
echo

# AUR / Yay updates
echo ">>> AUR (yay) Updates:"
if aur_updates=$(yay -Qua 2>/dev/null); then
    if [[ -z "$aur_updates" ]]; then
        echo "✔ No AUR updates"
    else
        echo "$aur_updates"
    fi
else
    echo "No update yet, please double check.."
fi

echo
read -n 1 -p "Press any key to close..."

