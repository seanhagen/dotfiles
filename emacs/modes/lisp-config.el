;;; lisp-config.el --- Summary
;;; Commentary:
;;; Code:

(use-package lisp-mode :mode "\\.el\\'")

(use-package emacs-lisp-mode
  :mode "\\.emacs.d/.*el\\'"
  :commands emacs-lisp-mode
  :init
  (add-to-list 'auto-mode-alist '("/home/sean/.emacs.d" . emacs-lisp-mode)))

(use-package paredit
  :commands paredit-mode
  :init
  (add-hook 'lisp-mode-hook 'paredit-mode)
  (add-hook 'clojure-mode-hook 'paredit-mode)
  :config
  (rainbow-delimiters-mode)
  (setq load-prefer-newer t))

(use-package auto-compile
  :after paredit-mode
  :config
  (auto-compile-on-save-mode t)
  (auto-compile-on-load-mode t)
  (setq auto-compile-display-buffer nil
        auto-compile-mode-line-counter t))

;; cider
;; slime
(use-package slime :mode "\\.lisp\\'")
;; slime-company
;;
