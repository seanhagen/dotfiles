(package-initialize)

;; Let's save all the changes we make to "custom.el",
;;  instead of this file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

(load-file "~/.emacs.d/themes/sean-theme.el")
(load-theme 'sean)

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")

;; store passwords and whatnot outside the emacs folder
(load-file "~/.secure-emacs")

;; load up some miscleanious settings
(load-file "~/.emacs.d/misc.el" )

;; Add some load paths
(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/modes")
(add-to-list 'load-path "~/.emacs.d/downloads")
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/mu4e")

(require 'functions)
(require 'keybindings)

(require 'use-package)

(mapc 'load (file-expand-wildcards "~/.emacs.d/modes/*.el"))
