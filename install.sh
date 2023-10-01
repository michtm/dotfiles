#!/usr/bin/env bash
# install.sh - Installation des fichiers points

# Prérequis: récupérer le répertoire du présent script
script_path="$(readlink -f "$0")"
script_dir="$(dirname "$script_path")"

# Installation des fichiers de démarrage de Emacs
mkdir -p ~/.emacs.d
ln -fs "$script_dir/emacs/early-init.el" ~/.emacs.d/early-init.el

# Suppression des mots
unset -v script_dir
unset -v script_path

