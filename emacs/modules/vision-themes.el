;;; vision-themes.el --- Une vision d'un thème Emacs -*- lexical-binding: t -*-

;;; Commentary:

;; Vision est née d'une envie de programmer dans un environnement agréable à mes
;; yeux. Elle s'inspire notamment des suivants (de près ou de loin):
;; - modus-themes: https://github.com/protesilaos/modus-themes
;; - nano-theme: https://github.com/rougier/nano-theme
;; - nano-emacs: https://github.com/rougier/nano-emacs
;; - Nier: Automata (et pourquoi pas ?)
;; Nous définissons deux thèmes (vision-light et vision-dark) en se basant sur
;; le commentaire suivant (voir /usr/share/emacs/<version>/lisp/custom.el.gz):
;; 
;; A theme file is named `THEME-theme.el' (where THEME is the theme
;; name) found in `custom-theme-load-path'.  It has this format:
;;
;;   (deftheme THEME
;;     DOCSTRING)
;;
;;   (custom-theme-set-variables
;;    'THEME
;;    [THEME-VARIABLES])
;;
;;   (custom-theme-set-faces
;;    'THEME
;;    [THEME-FACES])
;;
;;   (provide-theme 'THEME)

;;; Code:

(defgroup vision-faces nil
  "Faces defined by Vision themes."
  :group 'faces)

;;;; Custom Faces

;; A theme is fully defined by this set of faces

(defface vision-face-default nil
  "Default face is used for regular information."
  :group 'vision-faces)

(defface vision-face-critical nil
  "Critical face is for information that requires immediate action.
It should be of high constrast when compared to other faces. This
can be realized (for example) by setting an intense background
color, typically a shade of red. It must be used scarcely."
  :group 'vision-faces)

(defface vision-face-popout nil
  "Popout face is used for information that needs attention.
To achieve such effect, the hue of the face has to be
sufficiently different from other faces such that it attracts
attention through the popout effect."
  :group 'vision-faces)

(defface vision-face-strong nil
  "Strong face is used for information of a structural nature.
It has to be the same color as the default color and only the
weight differs by one level (e.g., light/regular or
regular/bold). It is generally used for titles, keywords,
directory, etc."
  :group 'vision-faces)

(defface vision-face-salient nil
  "Salient face is used for information that are important.
To suggest the information is of the same nature but important,
the face uses a different hue with approximately the same
intensity as the default face. This is typically used for links."
  :group 'vision-faces)

(defface vision-face-faded nil
  "Faded face is for information that are less important.
It is made by using the same hue as the default but with a lesser
intensity than the default. It can be used for comments,
secondary information and also replace italic (which is generally
abused anyway)."
  :group 'vision-faces)

(defface vision-face-subtle nil
  "Subtle face is used to suggest a physical area on the screen.
It is important to not disturb too strongly the reading of
information and this can be made by setting a very light
background color that is barely perceptible."
  :group 'vision-faces)

;;;; Theme macro
;; TODO(mtr) Définir une macro pour appliquer un thème
;; (defmacro vision-themes-deftheme (theme &optional doc theme-variables theme-faces)
;;   "Construit un THEME d'après la spécification de `custom.el':
;; A theme file is named `THEME-theme.el' (where THEME is the theme
;; name) found in `custom-theme-load-path'.  It has this format:

;;   (deftheme THEME
;;     DOCSTRING)

;;   (custom-theme-set-variables
;;    'THEME
;;    [THEME-VARIABLES])

;;   (custom-theme-set-faces
;;    'THEME
;;    [THEME-FACES])

;;   (provide-theme 'THEME)"
;;   (deftheme ,theme ,doc)
;;   (apply 'custom-theme-set-variables (cons ',theme ,theme-variables))
;;   (apply 'custom-theme-set-faces (cons ',theme ,theme-faces))
;;   (provide-theme ',theme))

(provide 'vision-themes)
;;; vision-themes.el ends here
