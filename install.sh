#!/usr/bin/env bash
# install.sh - Installation des fichiers points

# Prérequis: récupérer le répertoire du présent script
script_path="$(readlink -f "$0")"
script_dir="$(dirname "$script_path")"

# Suppression des mots
unset -v script_dir
unset -v script_path

