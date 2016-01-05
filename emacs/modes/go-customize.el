;; happens once
;; (eval-after-load "go-mode"
;;   '(progn
;;      (require 'company-go)))

(require 'company-go)
(setenv "GOPATH" "/home/sean/Code/Go")

;; happens every time a go buffer is loaded
(add-hook 'go-mode-hook (lambda ()
                          (add-hook 'before-save-hook 'gofmt-before-save)
                          (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)
                          (local-set-key (kbd "C-c i") 'go-goto-imports)
                          (set (make-local-variable 'company-backends) '(company-go))

                          (if (not (string-match "go" compile-command))
                              (set (make-local-variable 'compile-command)
                                   "go generate && go build -v && go test -v && go vet"))
                          (electric-pair-mode +1)))


(provide 'go-customize)
