;;; early-init.el --- Early Init File -*- lexical-binding: t -*-

;;; Commentary:

;; Les commentaires sont écrits en français et en anglais, dans l'ordre de
;; priorité

;;; Code:

;; Augmente le seuil du ramasse-miettes de façon temporaire
(defvar early-init--gc-cons-threshold gc-cons-threshold)

(setq gc-cons-threshold most-positive-fixnum)

;; Désactivation des packages au démarrage
(setq package-enable-at-startup t)

;; NOTE(mtr) Tout ce qui concerne l'interface utilisateur fera l'objet d'un
;; thème Emacs (nom de code: Vision)

;; Activation de quelques fonctionnalités d'interface utilisateur
(setq inhibit-startup-screen t ; N'affiche pas l'écran de démarrage
      visible-bell t)          ; Faire clignoter le cadre pour la cloche

(column-number-mode)
(global-display-line-numbers-mode 1)

;; Désactivation de certains éléments d'interface utilisateur
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(add-hook 'emacs-startup-hook
	  (lambda ()
	    (setq gc-cons-threshold early-init--gc-cons-threshold)))

;;; early-init.el ends here
