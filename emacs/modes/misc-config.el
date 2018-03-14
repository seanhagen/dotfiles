;;; misc-config.el --- Summary
;;; Commentary:
;;; Code:

;;(use-package elcord)

(use-package eldoc
  :diminish ""
  ;; :config
  ;; (use-package inline-docs
  ;;   :config
  ;;   (setq eldoc-message-function #'inline-docs))
  )

(use-package ace-window
  :bind (("M-o" . ace-window)))

(use-package iy-go-to-char
  :bind (("M-m" . iy-go-to-char)))

(use-package disable-mouse
  :diminish (global-diminish-mouse-mode . "")
  :config
  (global-disable-mouse-mode t)
  (diminish 'global-diminish-mouse-mode ""))


(use-package abbrev
  :diminish "")

(use-package smartparens
  :diminish ""
  :config
  (require 'smartparens-config)
  (smartparens-global-mode 1))

;; (use-package rainbow-identifiers
;;   :config
;;   (add-hook 'prog-mode-hook 'rainbod-identifiers-mode))



(use-package auto-dictionary
  :diminish "")


;; (use-package coin-ticker
;;   :config
;;   (setq coin-ticker-api-poll-interval 120
;;         coin-ticker-syms '("BTC" "ETH")
;;         coin-ticker-price-convert "CAD")
;;   (coin-ticker-mode 1))





;; ;; for ocodo modeline themes
;; (defun ocodo-mesh-aqua-buffer-name-style (widget)
;;   (list :font-weight "normal"
;;         :font-size "15pt" ;; Change font size to whatever you'd like.
;;         :font-family "sans-serif"
;;         :fill (if (smt/window-active-p) "#FFFFFF" "#666666")))



;; (show-smartparens-global-mode t)

;; (define-key sp-keymap (kbd "C-M-f") 'sp-forward-sexp)
;; (define-key sp-keymap (kbd "C-M-b") 'sp-backward-sexp)

;; (define-key sp-keymap (kbd "C-M-d") 'sp-down-sexp)
;; (define-key sp-keymap (kbd "C-M-a") 'sp-backward-down-sexp)
;; (define-key sp-keymap (kbd "C-S-a") 'sp-beginning-of-sexp)
;; (define-key sp-keymap (kbd "C-S-d") 'sp-end-of-sexp)

;; (define-key sp-keymap (kbd "C-M-e") 'sp-up-sexp)
;; (define-key emacs-lisp-mode-map (kbd ")") 'sp-up-sexp)
;; (define-key sp-keymap (kbd "C-M-u") 'sp-backward-up-sexp)
;; (define-key sp-keymap (kbd "C-M-t") 'sp-transpose-sexp)

;; (define-key sp-keymap (kbd "C-M-n") 'sp-next-sexp)
;; (define-key sp-keymap (kbd "C-M-p") 'sp-previous-sexp)

;; (define-key sp-keymap (kbd "C-M-k") 'sp-kill-sexp)
;; (define-key sp-keymap (kbd "C-M-w") 'sp-copy-sexp)

;; (define-key sp-keymap (kbd "M-<delete>") 'sp-unwrap-sexp)
;; (define-key sp-keymap (kbd "M-<backspace>") 'sp-backward-unwrap-sexp)

;; (define-key sp-keymap (kbd "C-<right>") 'sp-forward-slurp-sexp)
;; (define-key sp-keymap (kbd "C-<left>") 'sp-forward-barf-sexp)
;; (define-key sp-keymap (kbd "C-M-<left>") 'sp-backward-slurp-sexp)
;; (define-key sp-keymap (kbd "C-M-<right>") 'sp-backward-barf-sexp)

;; (define-key sp-keymap (kbd "M-D") 'sp-splice-sexp)
;; (define-key sp-keymap (kbd "C-M-<delete>") 'sp-splice-sexp-killing-forward)
;; (define-key sp-keymap (kbd "C-M-<backspace>") 'sp-splice-sexp-killing-backward)
;; (define-key sp-keymap (kbd "C-S-<backspace>") 'sp-splice-sexp-killing-around)

;; (define-key sp-keymap (kbd "C-]") 'sp-select-next-thing-exchange)
;; (define-key sp-keymap (kbd "C-<left_bracket>") 'sp-select-previous-thing)
;; (define-key sp-keymap (kbd "C-M-]") 'sp-select-next-thing)

;; (define-key sp-keymap (kbd "M-F") 'sp-forward-symbol)
;; (define-key sp-keymap (kbd "M-B") 'sp-backward-symbol)

;; (define-key sp-keymap (kbd "H-t") 'sp-prefix-tag-object)
;; (define-key sp-keymap (kbd "H-p") 'sp-prefix-pair-object)
;; (define-key sp-keymap (kbd "H-s c") 'sp-convolute-sexp)
;; (define-key sp-keymap (kbd "H-s a") 'sp-absorb-sexp)
;; (define-key sp-keymap (kbd "H-s e") 'sp-emit-sexp)
;; (define-key sp-keymap (kbd "H-s p") 'sp-add-to-previous-sexp)
;; (define-key sp-keymap (kbd "H-s n") 'sp-add-to-next-sexp)
;; (define-key sp-keymap (kbd "H-s j") 'sp-join-sexp)
;; (define-key sp-keymap (kbd "H-s s") 'sp-split-sexp)



;; (autoload 'er/expand-region "expand-region" "Expand Region" t)
;; (rainbow-mode 1)
;; ;(beacon-mode 1)

;; ; https://github.com/Malabarba/aggressive-indent-mode
;; (global-aggressive-indent-mode 1)
;; (add-to-list 'aggressive-indent-excluded-modes 'html-mode)

;; (require 'highlight-symbol)
;; (global-set-key [(control f3)] 'highlight-symbol)
;; (global-set-key [f3] 'highlight-symbol-next)
;; (global-set-key [(shift f3)] 'highlight-symbol-prev)
;; (global-set-key [(meta f3)] 'highlight-symbol-query-replace)


;; (require 'uniquify)
;; (setq uniquify-buffer-name-style 'reverse)
;; (setq uniquify-separator " • ")
;; (setq uniquify-after-kill-buffer-p t)
;; (setq uniquify-ignore-buffers-re "^\\*")

(use-package google)

(use-package auto-indent-mode
  :diminish (auto-indent-mode . "")
  :config (auto-indent-global-mode))

(use-package hackernews)

(use-package octopress)
(use-package jekyll-modes
  :init
  (add-to-list 'auto-mode-alist '("/home/sean/Documents/blog/_posts/.*\\.md$" . jekyll-markdown-mode))
  (add-to-list 'auto-mode-alist '("/home/sean/Documents/blog/_posts/.*\\.markdown$" . jekyll-markdown-mode)))

(use-package hyde
  :config
  (setq hyde-home "/home/sean/Documents/blog"))

(use-package tldr)

(use-package toggle-quotes
  :init
  (global-set-key (kbd "C-'")  'toggle-quotes))

(use-package treemacs
  :ensure t)

(use-package tomatinho
  :ensure t)

(use-package apt-sources-list)

(use-package pocket-reader)


;; offlineimap
;; paradox
;; podcaster
;; pomodoro
;; pretty-lambdada
;; pretty-mode

;; Https://github.com/bddean/emacs-ereader
(use-package ereader)

;; https://github.com/syohex/emacs-fontawesome
(use-package fontawesome)

;; http://github.com/avendael/emacs-geeknote
;; TODO - properly set up
(use-package geeknote)

;; google-contacts
;; google-maps
;; google-this
;; google-translate

;; rainbow-blocks
(use-package rainbow-blocks
  :init
  (add-hook 'clojure-mode-hook 'rainbow-blocks-mode))

;; rainbow-mode
(use-package rainbow-mode)

;; ranger

;; runner
(use-package runner)

;; screenshot
(use-package screenshot)

;; tabula-rasa
(use-package tabula-rasa)

;; thesaurus
(use-package thesaurus)

;; transmission
;; hacker-typer
;; heroku
;; hide-comnt
;; hl-anything
;; hl-indent
;; hlinum
;; lorem-ipsum

;; mode-icons
(use-package mode-icons
  :init
  (mode-icons-mode))

;; nanowrimo

(use-package nov
  :ensure t
  :mode ("\\.epub\\'" . nov-mode))

(use-package all-the-icons
  :ensure t)

;; Games!
;; 2048-game
;; steam
;; roguel-ike
;; gnugo
