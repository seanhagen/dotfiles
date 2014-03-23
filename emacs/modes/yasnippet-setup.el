;; snippets!
(add-to-list 'load-path "~/.emacs.d/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)
(define-key yas-minor-mode-map (kbd "C-c C-e") 'yas-expand)

(require 'dropdown-list)
(setq yas-prompt-functions '(yas-dropdown-prompt
                             yas-ido-prompt
                             yas-completing-prompt))

(provide 'yasnippet-setup)
