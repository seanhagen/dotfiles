;;; javascript-config.el --- Summary
;;; Commentary:
;;; Code:
(use-package rjsx-mode
  :mode "\\.js$"
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
  (setq inferior-js-program-command "/usr/local/node/bin/node -i")
  (add-to-list 'mode-icons '("\\`RJSX\\'" "js" xpm))
  (use-package tern
    :diminish tern-mode
    :init
    (add-hook 'js2-mode-hook 'tern-mode)
    (add-hook 'web-mode-hook 'tern-mode)

    :config
    (use-package company-tern
      :ensure t
      :init (add-to-list 'company-backends 'company-tern)))

  (use-package prettier-js
    :init
    (add-hook 'js2-mode-hook 'prettier-js-mode)
    (add-hook 'rjsx-mode-hook 'prettier-js-mode)))

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

(use-package npm-mode
  :init (npm-global-mode))

(use-package react-snippets)

;; (use-package js-doc
;;   :init
;;   (setq js-doc-mail-address "sean@playbiba.com"
;;         js-doc-author (format "Sean Hagen <%s>" js-doc-mail-address)
;;         js-doc-url "playbiba.com"
;;         js-doc-license "Apache 2.0")
;;   (add-hook 'rjsx-mode-hook 'js-doc)
;;   :bind (:map js2-mode-map
;;               ("C-c i" . js-doc-insert-function-doc)
;;               ("@" . js-doc-insert-tag)
;;               ("C-c d" . js-doc-describe-tag)
;;               :map rjsx-mode-map
;;               ("C-c i" . js-doc-insert-function-doc)
;;               ("@" . js-doc-insert-tag)
;;               ("C-c d" . js-doc-describe-tag)))

(provide 'javascript-config)
;;; javascript-config.el ends here
