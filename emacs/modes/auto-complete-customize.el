(require 'auto-complete-config)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
(ac-flyspell-workaround)

(custom-set-variables
 '(ac-etags-requires 1))

(eval-after-load "etags"
  '(progn
     (ac-etags-setup)))

(defun my/c-mode-common-hook ()
  (add-to-list 'ac-sources 'ac-source-etags))

(add-hook 'c-mode-common-hook 'my/c-mode-common-hook)

(eval-after-load 'auto-complete
  '(add-to-list 'ac-modes 'inf-ruby-mode))
(add-hook 'inf-ruby-mode-hook 'ac-inf-ruby-enable)

(eval-after-load 'inf-ruby '
  '(define-key inf-ruby-mode-map (kbd "TAB") 'auto-complete))

(add-hook 'js2-mode-hook 'ac-js2-mode)

(require 'auto-complete-c-headers)
(add-to-list 'ac-sources 'ac-source-c-headers)

(require 'auto-dictionary)
(add-hook 'flyspell-mode-hook (lambda () (auto-dictionary-mode 1)))



(provide 'auto-complete-customize)
