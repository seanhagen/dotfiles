;;; flycheck-config.el --- Summary
;;; Commentary:
;;; Code:

(use-package flycheck
  :ensure t
  :diminish flycheck-mode
  :init (global-flycheck-mode)
  :config (flycheck-pos-tip-mode))

;; flycheck-css-colorguard
