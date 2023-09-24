;; righteous-theme.el -- Colorless righteous theme, inspired by ACME/Solarized/One dark themes
;; version: 1.01

(deftheme righteous "Righteous theme")

(let* ((righteous/bg          "#00181f")
       (righteous/fg          "#93a1a1")
       (righteous/comment     "#4e4e4e")
       (righteous/modeline    "#6c6c6c")
       (righteous/string      "#5faf87")
       (righteous/parentmatch "#ff5fff")
       (righteous/cursor      "#cd390b")
       (righteous/select      "#767676"))

  (custom-theme-set-faces
   `righteous
   `(default ((t (:foreground, righteous/fg :background, righteous/bg))))
   
   ;; highlight
   `(region  ((t (:foreground "black" :background, righteous/select))))

   ;;parents match
   `(show-paren-match ((t (:foreground ,righteous/parentmatch))))

   ;; cursor   
   `(cursor ((t (:background, righteous/cursor))))
    
   ;; modeline
   `(linum ((t :foreground, righteous/fg)))
   `(mode-line ((t (:foreground, righteous/modeline :background, righteous/bg))))
   
   ;; hl-line
   `(hl-line ((t (:foreground, righteous/select ))))

   ;; remove syntax highlight
   `(font-lock-builtin-face		    ((t (:foreground ,righteous/fg))))
   `(font-lock-function-name-face	((t (:foreground ,righteous/fg))))
   `(font-lock-keyword-face		    ((t (:foreground ,righteous/fg))))
   `(font-lock-preprocessor-face	((t (:foreground ,righteous/fg))))
   `(font-lock-type-face		    ((t (:foreground ,righteous/fg))))
   `(font-lock-constant-face		((t (:foreground ,righteous/fg))))
   `(font-lock-variable-name-face	((t (:foreground ,righteous/fg))))
   
   ;; add for strings and comments
   `(font-lock-string-face		((t (:foreground ,righteous/string))))
   `(font-lock-comment-face		((t (:foreground ,righteous/comment))))
   `(font-lock-comment-delimiter-face	((t (:foreground ,righteous/comment))))
   `(font-lock-doc-string-face ((t (:foreground ,righteous/comment))))
   `(font-lock-doc-face ((t (:foreground ,righteous/comment))))
   `(font-lock-preprocessor-face ((t (:foreground ,righteous/comment))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,righteous/comment))))

   
   ;; warning/errors
   `(warning ((t (:foreground "red"))))
   `(error ((t (:foreground "red" :weight bold))))
   `(font-lock-warning-face		((t (:foreground "red" :bold t))))
   `(dired-directory ((t (:foreground ,righteous/comment))))))

(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(defun righteous-theme()
  "Apply the righteous color theme."
  (interactive)
  (load-theme 'righteous t))

(provide 'righteous-theme)
(provide-theme 'righteous)
