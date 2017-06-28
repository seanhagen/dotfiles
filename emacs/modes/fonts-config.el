;;; fonts-config.el -- Summary
;;; Commentary:
;;; Code:

(use-package all-the-icons)

(use-package all-the-icons-dired
  :init
  (add-hook 'dired-mode-hook 'all-the-icons-dired-mode))

(provide 'fonts-config)
;;; fonts-config.el ends here
