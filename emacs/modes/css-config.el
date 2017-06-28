;;; css-config.el --- Summary
;;; Commentary:
;;; Code:
(use-package css-mode
  :init
  (add-hook 'css-mode-hook 'rainbow-mode))

(use-package sass-mode
  :mode "\\.sass\\'")

(use-package scss-mode
  :mode "\\.scss\\'")

(use-package less-mode
  :mode "\\.less\\'")
