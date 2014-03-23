(setq multi-term-program "/bin/zsh")
(add-hook 'term-mode-hook (lambda()
                            (yas-minor-mode -1)
                            (autopair-mode -1)
                            (global-whitespace-mode -1)))

;; (defcustom term-unbind-key-list
;;   '("C-z" "C-x" "C-c" "C-h" "C-y" "<ESC>" "C-p" "C-n")
;;   "The key list that will need to be unbind."
;;   :type 'list
;;   :group 'multi-term)

;; (defcustom term-bind-key-alist
;;   '(
;;     ("C-c C-c" . term-interrupt-subjob)
;;     ("C-p" . previous-line)
;;     ("C-n" . next-line)
;;     ("C-s" . isearch-forward)
;;     ("C-r" . isearch-backward)
;;     ("C-m" . term-send-raw)
;;     ("M-f" . term-send-forward-word)
;;     ("M-b" . term-send-backward-word)
;;     ("M-o" . term-send-backspace)
;;     ("M-p" . term-send-up)
;;     ("M-n" . term-send-down)
;;     ("M-M" . term-send-forward-kill-word)
;;     ("M-N" . term-send-backward-kill-word)
;;     ("M-r" . term-send-reverse-search-history)
;;     ("M-," . term-send-input)
;;     ("M-." . comint-dynamic-complete))
;;   "The key alist that will need to be bind.
;; If you do not like default setup, modify it, with (KEY . COMMAND) format."
;;   :type 'alist
;;   :group 'multi-term)


(provide 'term-customize)
