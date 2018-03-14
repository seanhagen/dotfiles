;;; flycheck-config.el --- Summary
;;; Commentary:
;;; Code:

(use-package flycheck
  :ensure t
  ;; :diminish flycheck-mode
  :init (global-flycheck-mode)
  :config
  (flycheck-pos-tip-mode)
  (use-package flycheck-yamllint
    :ensure t
    :defer t
    :init (add-hook 'flycheck-mode-hook 'flycheck-yamllint-setup))
  )

;; flycheck-css-colorguard
