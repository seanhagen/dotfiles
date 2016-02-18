(require 'company-go)
(require 'go-direx)
(require 'go-projectile)
(setenv "GOPATH" "/home/sean/Code/Go")

(load "$GOPATH/src/golang.org/x/tools/cmd/oracle/oracle.el")
(require 'go-oracle)

;; happens every time a go buffer is loaded
(add-hook 'go-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)
            (local-set-key (kbd "C-c i") 'go-goto-imports)
            (set (make-local-variable 'company-backends) '(company-go))
            (company-mode)

            (go-eldoc-setup)

            (define-key go-mode-map (kbd "C-c C-j") 'go-direx-pop-to-buffer)
            (define-key go-mode-map (kbd "M-.") 'godef-jump)))

(defun my-go-mode-hook ()
  ;; Call Gofmt before saving
  (add-hook 'before-save-hook 'gofmt-before-save)
  ;; Customize compile command to run go build
  (if (not (string-match "go" compile-command))
      (set (make-local-variable 'compile-command)
           "go generate && go build -v && go test -v && go vet"))
  ;; Godef jump key binding
  (local-set-key (kbd "M-.") 'godef-jump))
(add-hook 'go-mode-hook 'my-go-mode-hook)

(provide 'go-customize)
