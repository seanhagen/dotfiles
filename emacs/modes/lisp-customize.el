(add-to-list 'load-path "~/.emacs.d/downloads/slime")

(require 'slime)

(add-hook 'lisp-mode-hook (lambda () (slime-mode t)))
(add-hook 'inferior-lisp-mode-hook (lambda () (inferior-slime-mode t)))
(setq inferior-lisp-program "/usr/bin/sbcl") ; your Lisp system
;(setq inferior-lisp-program "sbcl")

;;(require 'slime-repl)
;;(require 'clj-mode)
;;(require 'clj-refactor)
;;(require 'cljdoc)
;;(slime-setup '(slime-repl))
;;(slime-setup '(slime-fancy slime-asdf))

(slime-setup)

(provide 'lisp-customize)
