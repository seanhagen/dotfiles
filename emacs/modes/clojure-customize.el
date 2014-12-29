(autoload 'inf-clojure "inf-clojure" "Run an inferior Clojure process" t)
(autoload 'cider-mode "cider-mode")

(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)
(add-hook 'clojure-mode-hook 'projectile-mode)
(add-hook 'clojure-mode-hook 'flycheck-mode)
(add-hook 'clojure-mode-hook 'inf-clojure-minor-mode)

(provide 'clojure-customize)
