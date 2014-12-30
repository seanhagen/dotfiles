(require 'paredit)

(add-hook 'lisp-mode 'paredit-mode)
(add-hook 'clojure-mode 'paredit-mode)

;; (dolist (mode '(enh-ruby espresso))
;;   (add-hook (intern (format "%s-mode-hook" mode))
;;             '(lambda ()
;;                (add-to-list (make-local-variable 'paredit-space-for-delimiter-predicates)
;;                             (lambda (_ _) nil))
;;                (enable-paredit-mode))))

(provide 'paredit-customize)
