(require 'helm-customize)
;;(projectile-global-mode)

;; (add-hook 'ruby-mode-hook 'projectile-on)
(add-hook 'projectile-mode-hook 'projectile-rails-on)

(setq projectile-indexing-method 'native)

(setq projectile-enable-caching t)

(setq projectile-completion-system 'helm)
(helm-projectile-on)

(setq projectile-mode-line " Projectile")

(provide 'projectile-customize)
