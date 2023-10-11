;;; init.el --- Init File -*- lexical-binding: t -*-

;;; Commentary:

;; Les commentaires sont écrits en français et en anglais, dans l'ordre de
;; priorité

;;; Code:

(setq backup-inhibited t)
(setq custom-file (make-temp-file "emacs-custom-"))
(setq custom-theme-directory (locate-user-emacs-file "themes"))
(add-to-list 'load-path (locate-user-emacs-file "modules"))

;; Police IBM Plex Mono
(add-to-list 'default-frame-alist '(font . "IBM Plex Mono-10"))

;; Mode maximisé
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Thème sombre
;;(load-theme 'vision-dark t)

;; Thème clair
(load-theme 'vision-light :no-confirm)

;;; init.el ends here
