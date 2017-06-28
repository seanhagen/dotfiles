;;; javascript-config.el --- Summary
;;; Commentary:
;;; Code:

(use-package js2-mode
  :mode "\\.js\\'"
  :bind (:map js2-mode-map
              ("C-c C-n" . js2-next-error)
              ("C-x C-e" . js-send-last-sexp)
              ("C-M-x" . js-send-last-sexp-and-go)
              ("C-c b" . js-send-buffer)
              ("C-c C-b" . js-send-buffer-and-go)
              ("C-c l" . js-load-file-and-go))
  :init
  (add-hook 'js2-mode-hook 'skewer-mode)
  :config
  (setq inferior-js-program-command "/usr/local/node/bin/node -i"))

(use-package js2-refactor
  :init
  (add-hook 'js2-mode-hook #'js2-refactor-mode)
  :diminish js2-refactor-mode)

(use-package js2-highlight-vars
  :init
  (add-hook 'js2-mode-hook (lambda () (js2-highlight-vars-mode)))
  :diminish js2-highlight-vars-mode)

;; (use-package tj-mode
;;   :mode "\\.js\\'"
;;   :diminish tj-mode)

(use-package tern
  :diminish tern-mode
  :init
  (add-hook 'js2-mode-hook 'tern-mode)
  (add-hook 'web-mode-hook 'tern-mode))

(use-package company-tern
  :init (add-to-list 'company-backends 'company-tern))

(use-package skewer-mode
  :diminish skewer-mode
  :init
  (add-hook 'js2-mode-hook 'skewer-mode)
  (add-hook 'css-mode-hook 'skewer-css-mode)
  (add-hook 'html-mode-hook 'skewer-html-mode))

;; jade
;; jade-mode
;; jasmin
;; json
;; nodejs-repl
