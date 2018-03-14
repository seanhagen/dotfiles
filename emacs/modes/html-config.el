;;; html-config.el --- Summary
;;; Commentary:
;;; Code:

(use-package haml-mode
  :mode ("\\.haml\\'" "\\.hamlc\\'"))

(use-package slim-mode
  :mode ("\\.slim\\'"))

(use-package web-mode
  :mode ("\\.html?\\'" "\\.erb\\'" "\\.gohtml\\'" "\\.gotmpl\\'"))

(use-package cakecrumbs
  :config
  (cakecrumbs-auto-setup)

  (setq cakecrumbs-refresh-delay-seconds 0.1)

  ;; Appearances
  (setq cakecrumbs-separator " | ")
  (setq cakecrumbs-ellipsis "[...] ")

  ;; Ignore some patterns in selector string
  ;; (setq cakecrumbs-ignored-patterns '(
  ;;                                     "[.]col-[a-z][a-z]-[0-9]+"  ; Bootstrap's .col-*
  ;;                                     ))
  )



;; (use-package web-mode
;;   :mode ("\\.html.erb$")
;;   :init
;;   (add-hook 'web-mode-hook (lambda ()
;;                              (setq sgml-basic-offset 2
;;                                    indent-tabs-mode t)
;;                              (toggle-truncate-lines nil))))


;; html5-schema
;; html-twiddle
;; httpcode
;; restclient-helm
;; web-mode
;; web-beautify
