;;; vision-light-theme.el --- My personal light theme for Emacs -*- lexical-binding: t -*-

;;; Commentary:

;; Voir nano-emacs

;; les commentaires sont écrits en français et en anglais, dans l'ordre de
;; priorité

;;; Code:

(require 'vision-themes)

(deftheme vision-light "Une vision d'un thème clair")

;; NOTE(mtr) La fonction `custom-theme-set-variables' permet d'initialiser des
;; variables pour un thème donné. Pour le moment, je ne vois pas comment
;; utiliser cette fonction. Peut-être en s'inspirant de thèmes existant...
;;(custom-theme-set-variables 'vision-light nil)

(let* ((vision-bg "#dad4bb")
       (vision-fg "#4e4b42")
       (vision-bg-critical "#cd664d")
       (vision-fg-critical vision-bg)
       (vision-fg-popout "#cd664d")
       (vision-fg-strong vision-fg)
       (vision-fg-salient "#635f54")
       (vision-fg-faded "#a6a18e")
       (vision-bg-subtle "#b4af9a"))
  (custom-theme-set-faces
   'vision-light
   ;; Vision faces
   `(vision-face-default ((t (:foreground ,vision-fg :background ,vision-bg :weight light))))
   `(vision-face-critical ((t (:foreground ,vision-fg-critical :background ,vision-bg-critical))))
   `(vision-face-popout ((t (:foreground ,vision-fg-popout))))
   `(vision-face-strong ((t (:foreground ,vision-fg-strong :weight bold))))
   `(vision-face-salient ((t (:foreground ,vision-fg-salient :weight light))))
   `(vision-face-faded ((t (:foreground ,vision-fg-faded :weight light))))
   `(vision-face-subtle ((t (:background ,vision-bg-subtle))))
   ;; Standard faces - Structural
   `(bold ((t (:inherit 'vision-face-strong))))
   `(bold-italic ((t (:inherit 'vision-face-strong))))
   `(cursor ((((background light)) (:inherit 'vision-face-default :background ,vision-fg))
             (((background dark)) (:inherit 'vision-face-default :background ,vision-bg))))
   `(default ((t (:foreground ,vision-fg :background ,vision-bg :weight light))))
   `(highlight ((t (:inherit 'vision-face-subtle))))
   `(italic ((t (:inherit 'vision-face-faded))))
   `(region ((((background dark))(:inherit 'vision-face-subtle  :background ,vision-fg))
             (((background light))(:inherit 'vision-face-subtle :background ,vision-fg-salient))))
   `(window-divider ((t (:foreground ,vision-bg))))
   `(window-divider-first-pixel ((t (:foreground ,vision-bg))))
   `(window-divider-last-pixel ((t (:foreground ,vision-bg))))
   ;; Standard faces - Semantics
   `(error ((t (:inherit 'vision-face-critical))))
   `(match ((t (:inherit 'vision-face-popout))))
   `(shadow ((t (:inherit 'vision-face-faded))))
   `(success ((t (:inherit 'vision-face-salient))))
   `(warning ((t (:inherit 'vision-face-popout))))
   ;; Standard faces - General
   `(buffer-menu-buffer ((t (:inherit 'vision-face-strong))))
   `(completions-common-part ((t (:inherit 'vision-face-faded))))
   `(completions-first-difference ((t (:inherit 'vision-face-default))))
   `(fringe ((t (:inherit 'vision-face-faded :foreground ,vision-bg-subtle :background ,vision-bg))))
   `(isearch ((t (:inherit 'vision-face-strong))))
   `(isearch-fail ((t (:inherit 'vision-face-faded))))
   `(lazy-highlight ((t (:inherit 'vision-face-subtle))))
   `(link ((t (:inherit 'vision-face-salient))))
   `(minibuffer-prompt ((t (:inherit 'vision-face-strong))))
   `(secondary-selection ((t (:inherit 'vision-face-subtle))))
   `(show-paren-match ((t (:inherit 'vision-face-popout))))
   `(show-paren-mismatch ((t (:inherit 'vision-face-critical))))
   `(tooltip ((t (:inherit 'vision-face-subtle :height 0.85))))
   `(trailing-whitespace ((t (:inherit 'vision-face-subtle))))
   ;; Mode Line and Header Line
   `(header-line ((t (:inherit 'vision-face-default
                               :overline nil
                               :underline nil
                               :box `(:line-width 1 :color ,vision-bg :style nil)))))
   `(internal-border ((t (:background ,vision-bg))))
   `(mode-line ((t (:foreground ,vision-fg
                                :background ,vision-bg
                                :overline nil
                                :underline t
                                :box nil))))
   `(mode-line-inherit ((t (:inherit mode-line))))
   ;; Custom
   `(custom-button ((t (:foreground ,vision-fg-faded
                                    :background ,vision-bg
                                    :box `(:line-width 1 :color ,vision-fg-faded :style nil)))))
   `(custom-button-mouse ((t (:foreground ,vision-fg-faded
                                          :background ,vision-bg-subtle
                                          :box `(:line-width 1 :color ,vision-fg-faded :style nil)))))
   `(custom-button-pressed ((t (:inherit 'vision-face-salient
                                         :foreground ,vision-bg
                                         :background ,vision-fg-salient
                                         :box `(:line-width 1 :color ,vision-fg-faded :style nil)))))
   `(custom-changed ((t (:inherit 'vision-face-salient))))
   `(custom-comment ((t (:inherit 'vision-face-faded))))
   `(custom-comment-tag ((t (:inherit 'vision-face-faded))))
   `(custom-face-tag ((t (:inherit 'vision-face-strong))))
   `(custom-group-subtitle ((t (:inherit 'vision-face-strong))))
   `(custom-group-tag ((t (:inherit 'vision-face-strong))))
   `(custom-group-tag-1 ((t (:inherit 'vision-face-strong))))
   `(custom-group-invalid ((t (:inherit 'vision-face-popout))))
   `(custom-link ((t (:inherit 'vision-face-salient))))
   `(custom-modified ((t (:inherit 'vision-face-salient))))
   `(custom-state ((t (:inherit 'vision-face-salient))))
   `(custom-variable-tag ((t (:inherit 'vision-face-strong))))
   `(custom-visibility ((t (:inherit 'vision-face-salient))))
   ;; `diff-mode'
   `(diff-added ((t (:inherit 'vision-face-salient))))
   `(diff-changed ((t (:inherit 'vision-face-popout))))
   `(diff-context ((t (:inherit 'vision-face-faded))))
   `(diff-file-header ((t (:inherit 'vision-face-strong))))
   `(diff-header ((t (:inherit 'vision-face-faded))))
   ;; `(diff-refine-added ((t (:inherit '(vision-face-salient vision-face-strong)))))
   `(diff-refine-added ((t (:inherit 'vision-face-salient))))
   `(diff-refine-changed ((t (:inherit 'vision-face-popout))))
   `(diff-refine-removed ((t (:inherit 'vision-face-faded :strike-through t))))
   `(diff-removed ((t (:inherit 'vision-face-faded))))
   ;; Font Lock
   `(font-lock-builtin-face ((t (:inherit 'vision-face-salient))))
   `(font-lock-comment-face ((t (:inherit 'vision-face-faded))))
   `(font-lock-constant-face ((t (:inherit 'vision-face-salient))))
   `(font-lock-doc-face ((t (:inherit 'vision-face-faded))))
   `(font-lock-function-name-face ((t (:inherit 'vision-face-strong))))
   `(font-lock-keyword-face ((t (:inherit 'vision-face-salient))))
   `(font-lock-string-face ((t (:inherit 'vision-face-popout))))
   `(font-lock-type-face ((t (:inherit 'vision-face-salient))))
   `(font-lock-variable-name-face ((t (:inherit 'vision-face-strong))))
   `(font-lock-warning-face ((t (:inherit 'vision-face-popout))))
   ;; Whitespace
   `(whitespace-big-indent ((t (:inherit 'vision-face-faded))))
   `(whitespace-empty ((t (:inherit 'vision-face-subtle))))
   `(whitespace-hspace ((t (:inherit 'vision-face-faded))))
   `(whitespace-indentation ((t (:inherit 'vision-face-faded))))
   `(whitespace-line ((t (:foreground unspecified :background unspecified))))
   `(whitespace-newline nil)
   `(whitespace-space ((t (:inherit 'vision-face-faded))))
   `(whitespace-space-after-tab ((t (:inherit 'vision-face-faded))))
   `(whitespace-space-before-tab ((t (:inherit 'vision-face-faded))))
   `(whitespace-tab ((t (:inherit 'vision-face-faded))))
   `(whitespace-trailing ((t (:inherit 'vision-face-faded))))
   ))

;;TODO(mtr) Ajout de `markdown-mode'

(provide-theme 'vision-light)

;;; vision-light-theme.el ends here
