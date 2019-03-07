;;; terraform-config.el --- Summary
;;; Commentary:
;;; Code:
(use-package company-terraform
  :init (company-terraform-init))

(use-package terraform-mode
  :mode "\\.tf$")

;; (autoload 'processing-mode "processing-mode" "Processing mode" t)
;; (add-to-list 'auto-mode-alist '("\\.pde$" . processing-mode))

;; processing-mode
