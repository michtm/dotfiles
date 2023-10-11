;;; vision-dark-theme.el --- My personal dark theme for Emacs -*- lexical-binding: t -*-

;;; Commentary:

;; Voir nano-emacs, nano-theme (et Nier: Automata)

;; Les commentaires sont écrits en français et en anglais, dans l'ordre de
;; priorité

;;; Code:

(require 'vision)
;(require 'vision-themes)

(defmacro vision-themes-deftheme (theme &optional doc theme-variables theme-faces)
  "Construit un THEME d'après la spécification de `custom.el':
A theme file is named `THEME-theme.el' (where THEME is the theme
name) found in `custom-theme-load-path'.  It has this format:

  (deftheme THEME
    DOCSTRING)

  (custom-theme-set-variables
   'THEME
   [THEME-VARIABLES])

  (custom-theme-set-faces
   'THEME
   [THEME-FACES])

  (provide-theme 'THEME)"
  (deftheme ,theme ,doc)
  (apply 'custom-theme-set-variables (cons ',theme ,theme-variables))
  (apply 'custom-theme-set-faces (cons ',theme ,theme-faces))
  (provide-theme ',theme))

;;;; Définition des variables

;;;; Définition des faces
(let ((vision-fg-main "#dad4bb")
      (vision-bg-main "#4e4b42")
      (vision-critical-bg "#cd664d")
      (vision-popout-fg "#cd664d")
      (vision-salient-fg "#e6e6e6")
      (vision-faded-fg "#a49f8c")
      (vision-subtle-bg "#3f3c35")
      (cursor-bg-light "#635f54")
      (cursor-bg-dark "#d5cfb7"))
  (defconst vision-dark-faces
    '(
      ;; Vision faces
      `(vision-face-default ((t (:foreground ,vision-fg-main :background ,vision-bg-main))))
      `(vision-face-critical ((t (:foreground ,vision-fg-main :background ,vision-critical-bg))))
      `(vision-face-popout ((t (:foreground ,vision-popout-fg))))
      `(vision-face-strong ((t (:foreground ,vision-fg-main :weight 'bold))))
      `(vision-face-salient ((t (:foreground ,vision-salient-fg :weight 'light))))
      `(vision-face-faded ((t (:foreground ,vision-faded-fg :weight 'light))))
      `(vision-face-subtle ((t (:background ,vision-subtle-bg))))
      ;; Standard faces
      `(default ((t (:foreground ,vision-fg-main :background ,vision-bg-main))))
      `(cursor ((((background light)) (:background ,cursor-bg-light)
		 ((background dark)) (:background ,cursor-bg-dark)))))))

;;;; Appel du macro

;; Déclaration du thème
;; (deftheme vision-dark
;;   "Un thème sombre pour Emacs"
;;   :background-mode dark)

;; Application des faces du thème sombre
;; (let ((vision-fg-main "#dad4bb")
;;       (vision-bg-main "#4e4b42")
;;       (vision-critical-bg "#cd664d")
;;       (vision-popout-fg "#cd664d")
;;       (vision-salient-fg "#e6e6e6")
;;       (vision-faded-fg "#a49f8c")
;;       (vision-subtle-bg "#3f3c35")
;;       (cursor-bg-light "#635f54")
;;       (cursor-bg-dark "#d5cfb7"))
;;   (custom-theme-set-faces
;;    'vision-dark
;;    ;; Vision faces
;;    `(vision-face-default ((t (:foreground ,vision-fg-main :background ,vision-bg-main))))
;;    `(vision-face-critical ((t (:foreground ,vision-fg-main :background ,vision-critical-bg))))
;;    `(vision-face-popout ((t (:foreground ,vision-popout-fg))))
;;    `(vision-face-strong ((t (:foreground ,vision-fg-main :weight bold))))
;;    `(vision-face-salient ((t (:foreground ,vision-salient-fg :weight light))))
;;    `(vision-face-faded ((t (:foreground ,vision-faded-fg :weight light))))
;;    `(vision-face-subtle ((t (:background ,vision-subtle-bg))))
;;    ;; Standard faces
;;    `(default ((t (:foreground ,vision-fg-main :background ,vision-bg-main))))
;;    `(cursor ((((background light)) (:background ,cursor-bg-light)
;; 	      ((background dark)) (:background ,cursor-bg-dark))))))

(vision-themes-deftheme vision-dark "Un thème sombre pour Emacs." nil vision-dark-faces)

;(provide-theme 'vision-dark)

;;; vision-dark-theme.el ends here

