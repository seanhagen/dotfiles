;;;; sean-theme.el --- My super awesome theme

;; Copyright (C) 2015 Sean Hagen

;; Author: Sean Patrick Hagen <sean.hagen@gmail.com>
;; Version: 1.0
;; Keywords: theme

(deftheme sean "DOCSTRING for sean")
  (custom-theme-set-faces 'sean
   '(default ((t (:foreground "#fff2a9" :background "#282828" ))))
   '(cursor ((t (:background "#fdf4c1" ))))
   '(fringe ((t (:background "#282828" ))))
   '(mode-line ((t (:foreground "#3f33ff" :background "#ff7500" ))))
   '(region ((t (:background "#818181" ))))
   '(secondary-selection ((t (:background "#98765f" ))))
   '(font-lock-builtin-face ((t (:foreground "#fe8019" ))))
   '(font-lock-comment-face ((t (:foreground "#00ff1e" ))))
   '(font-lock-function-name-face ((t (:foreground "#b8bb26" ))))
   '(font-lock-keyword-face ((t (:foreground "#00eef9" ))))
   '(font-lock-string-face ((t (:foreground "#7585ff" ))))
   '(font-lock-type-face ((t (:foreground "#fb5985" ))))
   '(font-lock-constant-face ((t (:foreground "#ff376d" ))))
   '(font-lock-variable-name-face ((t (:foreground "#2ceca3" ))))
   '(minibuffer-prompt ((t (:foreground "#faff00" :bold t ))))
   '(font-lock-warning-face ((t (:foreground "red" :bold t ))))
   )

;;;###autoload
(and load-file-name
    (boundp 'custom-theme-load-path)
    (add-to-list 'custom-theme-load-path
                 (file-name-as-directory
                  (file-name-directory load-file-name))))
;; Automatically add this theme to the load path

(provide-theme 'sean)
