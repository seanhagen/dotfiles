;;; go-config.el --- Summary
;;; Commentary:
;;; Code:

;;go get -u github.com/saibing/bingo
;;go get -u github.com/stamblerre/gocode

(setenv "GOPATH" "/home/sean/Code/Go")

(use-package go-mode
  :ensure t
  :defer t
  :mode "\\.go\\'"
  :bind (:map go-mode-map
              ("C-c C-j" . go-direx-pop-to-buffer)
              ("C-c i" . go-goto-imports)
              ("C-c C-r" . go-remove-unused-imports)
              ("C-c C-t" . go-test-current-file)
              ("M-." . godef-jump))
  :config
  (unless (executable-find "bingo")
    (user-error "Executable bingo LSP server is not on PATH\n"))
  (add-hook 'go-mode-hook 'lsp)
  (add-hook 'before-save-hook 'gofmt-before-save)
  ;; (add-hook 'go-mode-hook
  ;;           (lambda ()
  ;;             (set (make-local-variable 'company-backends) '(company-go))))
  (go-eldoc-setup)

  (use-package godoc
    :bind (:map go-mode-map
                ("C-c C-k" . godoc-at-point)))

  ;; (use-package company-go
  ;;   :ensure t
  ;;   :defer t
  ;;   :config
  ;;   (push 'company-go company-backends))

  (use-package go-add-tags
    :bind (:map go-mode-map
                ("C-c '" . go-add-tags))
    :commands go-add-tags)

  ;; (use-package go-errcheck
  ;;   :bind (:map go-mode-map
  ;;               ("C-c g" . go-errcheck))
  ;;   :commands go-errcheck)
  ;;
  ;; (use-package flycheck-gometalinter
  ;;   :config
  ;;   (add-hook 'flycheck-mode-hook #'flycheck-gometalinter-setup)
  ;;   (setq flycheck-gometalinter-vendor t
  ;;         flycheck-gometalinter-disable-all t
  ;;         flycheck-gometalinter-enable-linters '("golint" "gosimple")
  ;;         flycheck-gometalinter-deadline "30s"))

  (use-package go-eldoc
    :init
    (add-hook 'go-mode-hook 'go-eldoc-setup))

  ;; (use-package helm-go-package
  ;;   :config
  ;;   (substitute-key-definition 'go-import-add 'helm-go-package go-mode-map))

  ;; (use-package go-guru
  ;;   :commands go-guru-hl-identifier-mode
  ;;   :init
  ;;   (add-hook 'go-mode-hook #'go-guru-hl-identifier-mode))

  ;; (use-package go-complete
  ;;   :init
  ;;   (add-hook 'completion-at-point-functions 'go-complete-at-point))

)


;; (use-package golint)
;; go-direx
;; go-playground
;; go-scratch
(provide 'go-config)
;;; go-config.el ends here
