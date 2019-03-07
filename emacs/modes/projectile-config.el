;;; projectile-config.el --- Summary
;;; Commentary:
;;; Code:

(use-package projectile
  :demand
  :bind-keymap ("C-c p" . projectile-command-map)
  :init
  (add-hook 'js2-mode-hook 'projectile-mode)
  :config
  (projectile-mode)
  (setq projectile-indexing-method 'native
        projectile-enable-caching t))

(use-package projectile-rails
  :bind (:map projectile-rails-mode-map
              ("C-c p C-r E" . hydra-projectile-rails/body))
  :commands 'projectile-rails-on
  :diminish ""
  :init
  (setq projectile-rails-keymap-prefix (kbd "C-c p C-r"))
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
