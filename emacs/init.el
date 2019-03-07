(package-initialize)

(eval-when-compile
  (require 'use-package))
(require 'diminish)                ;; if you use :diminish
(require 'bind-key)                ;; if you use any :bind variant

;; remote code execution fix (http://seclists.org/oss-sec/2017/q3/422)
(eval-after-load "enriched"
  '(defun enriched-decode-display-prop (start end &optional param)
     (list start end)))


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

;; Add some load paths
(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'load-path "~/.emacs.d/modes")
(add-to-list 'load-path "~/.emacs.d/downloads")
(add-to-list 'load-path "/usr/local/share/emacs/site-lisp")

(require 'functions)
(require 'keybindings)

(require 'use-package)

;; load up some miscleanious settings
(load-file "~/.emacs.d/misc.el" )


(mapc 'load (file-expand-wildcards "~/.emacs.d/modes/*.el"))

;; Let's save all the changes we make to "custom.el",
;;  instead of this file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

(load-file "~/.emacs.d/themes/sean-theme.el")
(load-theme 'sean)
