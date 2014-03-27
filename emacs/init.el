;; Sean's Emacs Config!

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(setq
 el-get-sources
 '(el-get
   wanderlust
   calfw
   php+-mode))

(setq my:el-get-packages
      '(wanderlust
        calfw))

(el-get 'sync my:el-get-packages)

;; Let's save all the changes we make to "custom.el", 
;;  instead of this file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

;; store passwords and whatnot outside the emacs folder
(load-file "~/.secure-emacs")

;; ;; load up some miscleanious settings
(load-file "~/.emacs.d/misc.el" )

;; ;; Add some load paths
(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/modes")
(add-to-list 'load-path "~/.emacs.d/downloads")

(require 'functions)
(require 'keybindings)

(require 'load-customizations)
