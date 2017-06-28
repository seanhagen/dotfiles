;; yasnippet
;; go-snippets
;; clojure-snippets

;; (require 'yasnippet)
;; (require 'dropdown-list)

;; (yas-global-mode 1)

;; (define-key yas-minor-mode-map (kbd "C-c C-e") 'yas-expand)

;; (setq yas-prompt-functions '(yas-dropdown-prompt
;;                              yas-ido-prompt
;;                              yas-completing-prompt))

(use-package yasnippet
  :diminish yas-minor-mode
  :bind (:map yas-minor-mode-map
              ("C-c C-e" . yas-expand))

  :config
  (yas-global-mode 1)
  (setq yas-prompt-functions '(yas-dropdown-prompt
                               yas-ido-prompt
                               yas-completing-prompt)))

(provide 'yasnippet-config)
;;; yasnippet-config.el ends here
