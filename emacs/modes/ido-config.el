;;; ido-config.el --- Summary
;;; Commentary:
;;; Code:

(use-package ido
  :config
  (ido-mode t)
  (use-package ido-hacks)
  (setq ido-decorations (quote ("\n-> " "" "\n   " "\n   ..." "[" "]" " [No match]" " [Matched]" " [Not readable]" " [Too big]" " [Confirm]")))
  (add-hook 'ido-minibuffer-setup-hook 'ido-disable-line-truncation)
  (add-hook 'ido-setup-hook 'ido-define-keys))

(use-package ido-better-flex
  :after ido
  :config
  (ido-better-flex/enable))

(defun ido-disable-line-truncation () (set (make-local-variable 'truncate-lines) nil))

(defun ido-define-keys () ;; C-n/p is more intuitive in vertical layout
  (define-key ido-completion-map (kbd "C-n") 'ido-next-match)
  (define-key ido-completion-map (kbd "C-p") 'ido-prev-match))
