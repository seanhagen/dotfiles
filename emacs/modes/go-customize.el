(require 'company-go)
(require 'go-direx)
(require 'go-projectile)
(setenv "GOPATH" "/home/sean/Code/Go")

;; (add-to-list 'load-path "/home/sean/Code/Go/src/golang.org/x/tools/cmd/oracle")
;; (require 'go-oracle)
(load "$GOPATH/src/golang.org/x/tools/cmd/oracle/oracle.el")

;; (add-to-list 'load-path (concat (getenv "GOPATH") "/src/github.com/golang/lint/misc/emacs"))
;; (require 'golint)

(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-gometalinter-setup))

(setq flycheck-gometalinter-vendor t)
;; Only enable selected linters
(setq flycheck-gometalinter-disable-all t)
(setq flycheck-gometalinter-enable-linters '("golint" "gosimple"))
;; Set different deadline (default: 5s)
(setq flycheck-gometalinter-deadline "10s")

;;(add-hook 'go-mode-hook 'go-oracle)
(define-key go-mode-map (kbd "C-c C-j") 'go-direx-pop-to-buffer)
(define-key go-mode-map (kbd "M-.") 'godef-jump)
(define-key go-mode-map (kbd "C-c C-r") 'go-remove-unused-imports)
(define-key go-mode-map (kbd "C-c i") 'go-goto-imports)

(defun my-go-mode-hook ()
  ;; Call Gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save)

  (set (make-local-variable 'company-backends) '(company-go))
  (company-mode)

  (go-eldoc-setup))

(add-hook 'go-mode-hook 'my-go-mode-hook)

(eval-after-load 'go-mode
  '(substitute-key-definition 'go-import-add 'helm-go-package go-mode-map))

(provide 'go-customize)
