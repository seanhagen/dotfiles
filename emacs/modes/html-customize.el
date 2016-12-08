;;; html-customize -- Summary:
;;; Commentary:
;;; Code:

(add-to-list 'auto-mode-alist '("html.erb$" . web-mode))

(add-hook 'web-mode-hook
          (lambda()
            (setq sgml-basic-offset 2)
            (setq indent-tabs-mode t)
            (toggle-truncate-lines nil)))

(provide 'html-customize)
;;; html-customize.el ends here
