;;; c-config.el --- Summary
;;; Commentary:
;;; Code:
(use-package irony
  :commands irony-mode
  :init
  (add-hook 'c++-mode-hook 'irony-mode)
  (add-hook 'c-mode-hook 'irony-mode))

(use-package arduino-mode
  :mode "\\.\\(pde\\|ino\\)\\'"
  :init
  (add-hook 'arduino-mode-hook 'irony-mode))

;; (autoload 'processing-mode "processing-mode" "Processing mode" t)
;; (add-to-list 'auto-mode-alist '("\\.pde$" . processing-mode))

;; processing-mode
