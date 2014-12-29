(projectile-global-mode)

(add-hook 'ruby-mode-hook 'projectile-on)
(add-hook 'projectile-mode-hook 'projectile-rails-on)

(setq projectile-enable-caching t)

(provide 'projectile-customize)
