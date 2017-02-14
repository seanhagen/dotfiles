;;; flyspell-config.el --- Summary
;;; Commentary:
;;; Code:

(use-package flyspell
  :diminish flyspell-mode
  :init
  (add-hook 'text-mode-hook (lambda () (flyspell-mode 1)))
  (add-hook 'prog-mode-hook (lambda () (flyspell-prog-mode 1)))
  (add-hook 'flyspell-mode-hook (lambda () (auto-dictionary-mode 1)))
  :config
  (setq flyspell-issue-message-flg nil))

(use-package auto-dictonary
  :commands auto-dictionary-mode)

(use-package ace-flyspell
  :config
  (ace-flyspell-setup))

(use-package ace-jump-help-line
  :bind (:map helm-map
              ("C-'" . ace-jump-helm-line)))
