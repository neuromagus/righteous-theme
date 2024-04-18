;; righteous-theme.el -- Colorless righteous theme, inspired by ACME/Solarized/One dark themes
;; This theme is licensed under the BSD 3-Clause License.
;; For full license text, see the LICENSE file in the root directory of this project.
;; created by Neuromagus
;; version: 1.12

(deftheme righteous "Righteous theme")

(let* ((righteous/bg                       "#00181f")
       (righteous/fg                       "#93a1a1")
       (righteous/comment                  "#4e4e4e")
       (righteous/modeline                 "#6c6c6c")
       (righteous/string                   "#5faf87")
       (righteous/error                    "#E50000")
       (righteous/softblue                 "#7c67d6")
       (righteous/softwhite                "#f5f5f5")
       (righteous/parentmatch              "#fe1eff")
       (righteous/cursor                   "#ff4500")
       (righteous/select                   "#668b8b"))

  (custom-theme-set-faces
   `righteous
   `(default ((((type tty) (min-colors 256))(:foreground, righteous/fg))
              (((type tty) (min-colors 8))(:background "black"))
              (t (:foreground, righteous/fg :background, righteous/bg))))
   
   ;; highlight
   `(region ((t (:foreground "black" :background, righteous/select))))
   `(isearch ((t (:foreground, righteous/softwhite :background, righteous/select :weight bold))))
   `(lazy-highlight ((t (:foreground "black" :background, righteous/select))))

   ;;parents match
   `(show-paren-match                      ((t (:foreground, righteous/parentmatch :weight bold))))

   ;; cursor   
   `(cursor                                ((t (:background, righteous/cursor))))

   ;; shell
   `(sh-quoted-exec                        ((t (:foreground, righteous/string))))
   
   ;; link, buttons etc
   `(link                                  ((t (:foreground, righteous/softblue))))
   `(button                                ((t (:foreground, righteous/softblue))))
   `(package-name                          ((t (:foreground, righteous/softblue))))
   `(browse-url-button                     ((t (:foreground, righteous/softblue))))
   
   ;; modeline
   `(linum                                 ((t :foreground, righteous/fg)))
   `(minibuffer-prompt                     ((t :foreground, righteous/string)))
   `(mode-line ((((type tty) (min-colors 256))(:foreground, righteous/fg))
                (((type tty) (min-colors 8))(:background "black"))
                (t (:foreground, righteous/modeline))))
   
   ;; hl-line
   `(hl-line                               ((t (:foreground, righteous/select))))
   
   ;; remove syntax highlight
   `(font-lock-function-call-face          ((t (:foreground, righteous/fg))))
   `(font-lock-function-name-face          ((t (:foreground, righteous/fg))))
   `(font-lock-builtin-face                ((t (:foreground, righteous/fg))))
   `(font-lock-preprocessor-face           ((t (:foreground, righteous/fg))))
   `(font-lock-type-face                   ((t (:foreground, righteous/fg))))
   `(font-lock-constant-face               ((t (:foreground, righteous/fg))))
   `(font-lock-keyword-face                ((t (:foreground, righteous/fg))))
   `(font-lock-variable-name-face          ((t (:foreground, righteous/fg))))
   `(font-lock-variable-use-face           ((t (:foreground, righteous/fg))))   
   `(font-lock-preprocessor-face           ((t (:foreground, righteous/fg))))
   `(font-lock-escape-face                 ((t (:foreground, righteous/fg))))
   `(font-lock-negation-char-face          ((t (:foreground, righteous/fg))))
   `(font-lock-operator-face               ((t (:foreground, righteous/fg))))
   `(font-lock-number-face                 ((t (:foreground, righteous/fg))))
   `(font-lock-property-name-face          ((t (:foreground, righteous/fg))))
   `(font-lock-property-use-face           ((t (:foreground, righteous/fg))))
   ;; brackets and delimeters inherits this option
   `(font-lock-punctuation-face            ((t (:foreground, righteous/fg))))
   `(font-lock-bracket-face                ((t (:foreground, righteous/fg)))) ;; (e.g., (), [], {})
   `(font-lock-delimiter-face              ((t (:foreground, righteous/fg)))) ;; (e.g., ;, :, ,)
   `(font-lock-regexp-face                 ((t (:foreground, righteous/fg))))
   `(font-lock-regexp-grouping-backslash   ((t (:foreground, righteous/fg))))
   `(font-lock-regexp-grouping-construct   ((t (:foreground, righteous/fg))))
   
   ;; doc strings and comments
   `(font-lock-string-face                 ((t (:foreground, righteous/string))))
   `(font-lock-comment-face                ((t (:foreground, righteous/comment :slant italic))))
   `(font-lock-comment-delimiter-face	   ((t (:foreground, righteous/comment :slant italic))))
   `(font-lock-doc-string-face             ((t (:foreground, righteous/comment))))
   `(font-lock-doc-markup-face             ((t (:foreground, righteous/comment))))
   `(font-lock-doc-face                    ((t (:foreground, righteous/comment :slant italic))))

   ;; warning/errors
   `(whitespace-line                       ((t (:foreground, righteous/error :underline t))))
   `(warning                               ((t (:foreground, righteous/error))))
   `(flycheck-warning                      ((t (:foreground, righteous/error))))
   `(flycheck-error                        ((t (:foreground, righteous/error))))
   `(compilation-error                     ((t (:foreground, righteous/error))))
   `(dired-warning                         ((t (:foreground, righteous/error))))
   `(show-paren-mismatch                   ((t (:foreground, righteous/error))))
   `(error                                 ((t (:foreground, righteous/error :weight bold))))
   `(diff-error                            ((t (:foreground, righteous/error :weight bold))))
   `(font-lock-warning-face                ((t (:foreground, righteous/error :weight bold))))
   
   ;; Eglot
   `(eglot-diagnostic-tag-unnecessary-face ((t (:foreground, righteous/comment))))
   `(eglot-diagnostic-tag-deprecated-face  ((t (:strike-through t :foreground,
                                                                righteous/comment))))))
    
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(defun righteous-theme()
  "Apply the righteous color theme."
  (interactive)
  (load-theme 'righteous t))

(provide 'righteous-theme)
(provide-theme 'righteous)
