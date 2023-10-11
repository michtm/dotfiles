#!/usr/bin/env bash
# install.sh - Installation des fichiers points

# Prérequis: récupérer le répertoire du présent script
script_path=$(readlink -f "$0")
script_dir=$(dirname "$script_path")

# Installation des fichiers de démarrage de Emacs
mkdir -p ~/.emacs.d
mkdir -p ~/.emacs.d/modules
mkdir -p ~/.emacs.d/themes
ln -fs "$script_dir/emacs/early-init.el" ~/.emacs.d/early-init.el
ln -fs "$script_dir/emacs/init.el" ~/.emacs.d/init.el
ln -fs "$script_dir/emacs/modules/vision-themes.el" ~/.emacs.d/modules/vision-themes.el
#ln -fs "$script_dir/emacs/themes/vision-dark-theme.el" ~/.emacs.d/themes/vision-dark-theme.el
ln -fs "$script_dir/emacs/themes/vision-light-theme.el" ~/.emacs.d/themes/vision-light-theme.el

# Suppression des mots
unset -v script_dir
unset -v script_path

