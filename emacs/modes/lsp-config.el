;;; lsp-config.el --- Summary
;;; Commentary:
;;; Code:
(use-package lsp-mode
  :ensure t
  :commands lsp
  :defer t
  :config
  (setq lsp-eldoc-enable-hover t
        lsp-eldoc-enable-signature-help t
        lsp-eldoc-prefer-signature-help t
        lsp-response-timeout 5)
  :init
  (setq lsp-prefer-flymake :none))

(use-package lsp-ui
  :ensure t
  :defer t
  :commands lsp-ui-mode
  :config
  (setq lsp-ui-doc-enable t
        lsp-ui-doc-max-width 70
        lsp-ui-peek-enable t
        lsp-ui-peek-always-show t))

(use-package company-lsp
  :ensure t
  :defer t
  :commands company-lsp)

(provide 'lsp-config)
;;; lsp-config.el ends here
