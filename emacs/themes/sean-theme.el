;;;; sean-theme.el --- My super awesome theme

;; Copyright (C) 2015 Sean Hagen

;; Author: Sean Patrick Hagen <sean.hagen@gmail.com>
;; Version: 1.0
;; Keywords: theme

(deftheme sean "DOCSTRING for sean")
(custom-theme-set-faces
 'sean
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
 '(circe-highlight-nick-face ((t (:foreground "orange red" :weight bold))) t)
 '(ediff-even-diff-A ((t (:background "cyan" :foreground "Black"))) t)
 '(ediff-even-diff-Ancestor ((t (:background "black" :foreground "White"))) t)
 '(ediff-even-diff-B ((t (:background "green" :foreground "black"))) t)
 '(ediff-even-diff-C ((t (:background "yellow" :foreground "Black"))) t)
 '(ediff-odd-diff-A ((t (:background "white" :foreground "medium blue"))) t)
 '(ediff-odd-diff-C ((t (:background "turquoise" :foreground "dark green"))) t)
 '(enh-ruby-string-delimiter-face ((t (:foreground "magenta"))))
 '(eshell-ls-directory ((t (:foreground "deep sky blue" :weight bold))) t)
 '(eshell-ls-executable ((t (:foreground "lime green" :weight normal))) t)
 '(flycheck-error ((t (:underline "Red1"))))
 '(flycheck-info ((t (:underline "yellow"))))
 '(flycheck-warning ((t (:underline "red"))))
 '(flymake-errline ((t (:background "orange" :foreground "red"))))
 '(font-lock-string-face ((t (:foreground "orchid"))))
 '(mode-line ((t (:background "dodger blue" :foreground "White" :inverse-video nil))))
 '(org-done ((t (:weight normal :strike-through t))))
 '(org-habit-alert-face ((t (:background "gold" :foreground "black"))) t)
 '(org-headline-done ((((class color) (min-colors 16) (background dark)) (:strike-through t))))
 '(show-paren-match ((t (:background "medium blue"))))
 '(sp-pair-overlay-face ((t (:underline "deep sky blue"))))
 '(trailing-whitespace ((t (:background "black" :foreground "orange red" :underline t)))))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))
;; Automatically add this theme to the load path

(provide-theme 'sean)
