;;; vision.el --- Vision -*- lexical-binding: t -*-

;;; Commentary:

;; Voir nano-emacs

;; Les commentaires sont écrits en français et en anglais, dans l'ordre de
;; priorité

;;; Code:

;; A theme is fully defined by this set of faces

(defface vision-face-default nil
  "Default face is used for regular information.")

(defface vision-face-critical nil
  "Critical face is for information that requires immediate action.
It should be of high constrast when compared to other faces. This
can be realized (for example) by setting an intense background
color, typically a shade of red. It must be used scarcely.")

(defface vision-face-popout nil
  "Popout face is used for information that needs attention.
To achieve such effect, the hue of the face has to be
sufficiently different from other faces such that it attracts
attention through the popout effect.")

(defface vision-face-strong nil
  "Strong face is used for information of a structural nature.
It has to be the same color as the default color and only the
weight differs by one level (e.g., light/regular or
regular/bold). IT is generally used for titles, keywords,
directory, etc.")

(defface vision-face-salient nil
  "Salient face is used for information that are important.
To suggest the information is of the same nature but important,
the face uses a different hue with approximately the same
intensity as the default face. This is typically used for links.")

(defface vision-face-faded nil
  "Faded face is for information that are less important.
It is made by using the same hue as the default but with a lesser
intensity than the default. It can be used for comments,
secondary information and also replace italic (which is generally
abused anyway).")

(defface vision-face-subtle nil
  "Subtle face is used to suggest a physical area on the screen.
It is important to not disturb too strongly the reading of
information and this can be made by setting a very light
background color that is barely perceptible.")

(provide 'vision)

;;; vision.el ends here
