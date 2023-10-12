;;; init.el --- Init File -*- lexical-binding: t -*-

;;; Commentary:

;; Les commentaires sont écrits en français et en anglais, dans l'ordre de
;; priorité

;;; Code:

;; Basic settings
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

;; Package settings
(setq package-archives
      '(("gnu" . "https://elpa.gnu.org/packages/")
        ("nongnu" . "https://elpa.nongnu.org/nongnu/")
        ("melpa" . "https://melpa.org/packages/")))
(setq package-archive-priorities
      '(("melpa" . 3)
	("gnu" . 2)
	("nongnu" . 1)))
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile (require 'use-package))

;; `markdown-mode'
(use-package markdown-mode
  :ensure t)

;;; init.el ends here
