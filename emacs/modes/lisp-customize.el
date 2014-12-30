(add-hook 'lisp-mode-hook 'paredit-mode)
(add-hook 'lisp-mode-hook #'rainbow-delimiters-mode)

(autoload 'auto-compile-on-save-mode "auto-compile")

(setq load-prefer-newer t)
(auto-compile-on-save-mode t)
(auto-compile-on-load-mode t)

(setq
 auto-compile-display-buffer nil
 auto-compile-mode-line-counter t)

(provide 'lisp-customize)
