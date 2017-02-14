;;; go-config.el --- Summary
;;; Commentary:
;;; Code:

(setenv "GOPATH" "/home/sean/Code/Go")

(use-package go-mode
  :mode ".go"
  :bind (:map go-mode-map
              ("C-c C-j" . go-direx-pop-to-buffer)
              ("C-c i" . go-goto-imports)
              ("C-c C-r" . go-remove-unused-imports)
              ("M-." . godef-jump))
  :config
  (setq flycheck-gometalinter-vendor t
        flycheck-gometalinter-disable-all t
        flycheck-gometalinter-enable-linters '("golint" "gosimple")
        flycheck-gometalinter-deadline "10s")
  )


;; (use-package go-guru
;;   :commands go-guru-hl-identifier-mode
;;   :init
;;   (add-hook 'go-mode-hook #'go-guru-hl-identifier-mode))

(use-package go-eldoc
  :init
  (add-hook 'go-mode-hook 'go-eldoc-setup))

(use-package go-add-tags
  :commands go-add-tags)

;; (use-package go-complete)
(use-package go-errcheck
  :bind (:map go-mode-map
         ("C-c r" . go-errcheck))
  :commands go-errcheck)

;; (use-package golint)


;; go-direx
;; go-playground
;; go-scratch
