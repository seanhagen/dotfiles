;;; c-config.el --- Summary
;;; Commentary:
;;; Code:

(defun my-irony-mode-on ()
  ;; avoid enabling irony-mode in modes that inherits c-mode, e.g: php-mode
  (when (member major-mode irony-supported-major-modes)
    (irony-mode 1)))

(use-package irony
  :commands irony-mode
  :init
  (add-hook 'c++-mode-hook 'my-irony-mode-on)
  (add-hook 'c-mode-hook 'my-irony-mode-on))

(use-package arduino-mode
  :mode "\\.\\(pde\\|ino\\)\\'"
  :init
  (add-hook 'arduino-mode-hook 'irony-mode))

;; (autoload 'processing-mode "processing-mode" "Processing mode" t)
;; (add-to-list 'auto-mode-alist '("\\.pde$" . processing-mode))

;; processing-mode
