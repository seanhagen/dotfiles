(use-package clojure-mode
  :init
  (add-hook 'clojure-mode-hook 'paredit-mode)
  (add-hook 'clojure-mode-hook #'rainbow-delimiters-mode)
  (add-hook 'clojure-mode-hook 'projectile-mode)
  (add-hook 'clojure-mode-hook 'flycheck-mode)
  (add-hook 'clojure-mode-hook 'inf-clojure-minor-mode))

(use-package inf-clojure
  :commands inf-clojure-minor-mode)

(use-package cider-mode
  :commands cider-jack-in)
