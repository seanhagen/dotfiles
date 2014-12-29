(require 'ido-complete-space-or-hyphen)
(require 'ido-gnus)
(require 'ido-hacks)
(require 'ido-yes-or-no)
(require 'ido-better-flex)

(ido-mode t)
;(ido-yes-or-no-mode y)
(ido-better-flex/enable)
;(setq ido-enable-flex-matching t)

(setq ido-decorations (quote ("\n-> " "" "\n   " "\n   ..." "[" "]" " [No match]" " [Matched]" " [Not readable]" " [Too big]" " [Confirm]")))
(defun ido-disable-line-truncation () (set (make-local-variable 'truncate-lines) nil))
(add-hook 'ido-minibuffer-setup-hook 'ido-disable-line-truncation)
(defun ido-define-keys () ;; C-n/p is more intuitive in vertical layout
  (define-key ido-completion-map (kbd "C-n") 'ido-next-match)
  (define-key ido-completion-map (kbd "C-p") 'ido-prev-match))

(provide 'ido-customize)
