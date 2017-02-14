;;; projectile-config.el --- Summary
;;; Commentary:
;;; Code:

(use-package projectile
  :demand
  :init
  (add-hook 'js2-mode-hook 'projectile-mode)
  :config
  (projectile-global-mode)
  (setq projectile-indexing-method 'native
        projectile-enable-caching t))

(use-package projectile-rails
  :commands 'projectile-rails-on
  :init
  (add-hook 'enh-ruby-mode-hook 'projectile-rails-on))

(use-package go-projectile
  :init
  (add-hook 'go-mode-hook 'go-projectile-mode))


;; (require 'helm-customize)
;; ;;(projectile-global-mode)

;; ;; (add-hook 'ruby-mode-hook 'projectile-on)
;; (add-hook 'projectile-mode-hook 'projectile-rails-on)

;; (setq projectile-indexing-method 'native)

;; (setq projectile-enable-caching t)

;; (setq projectile-completion-system 'helm)
;; (helm-projectile-on)

;; (setq projectile-mode-line " Projectile")
