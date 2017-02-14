;;; misc-config.el --- Summary
;;; Commentary:
;;; Code:

(use-package ace-window
  :bind (("M-o" . ace-window)))

(use-package iy-go-to-char
  :bind (("M-m" . iy-go-to-char)))

(use-package disable-mouse
  :diminish disable-mouse
  :config
  (global-disable-mouse-mode t))

;; (use-package abbrev-mode
;;   :init
;;   (add-hook 'enh-ruby-mode-hook (lambda () (abbrev-mode -1)))
;;   :config
;;   (setq abbrev-mode -1))

(use-package smartparens
  :config
  (require 'smartparens-config)
  (smartparens-global-mode 1))
;; (require 'smartparens-config)

;; (smartparens-global-mode t)
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

(use-package ibuffer
  :bind (("C-x C-b" . ibuffer))
  :init
  (add-hook 'ibuffer-hook-mode
            (lambda ()
              (ibuffer-switch-to-saved-filter-groups "default")
              (ibuffer-auto-mode 1)
              ))
  :config
  (setq ibuffer-show-empty-filter-groups "default"
        ibuffer-saved-filter-groups (quote (("default"
                                             ("Org" (mode . org-mode))
                                             ("Ruby" (mode . enh-ruby-mode))
                                             ("Go" (mode . go-mode))
                                             ("ERC" (mode . erc-mode))
                                             ("Programming"
                                              (or
                                               (mode . c-mode)
                                               (mode . perl-mode)
                                               (mode . python-mode)
                                               (mode . emacs-lisp-mode)
                                               (mode . lisp-mode)))
                                             ("EMail"
                                              (or
                                               (mode . notmuch-mode)
                                               (mode . notmuch-hello-mode)
                                               (mode . message-mode)
                                               (mode . mail-mode)))
                                             ))
                                           )))

;; (require 'iy-go-to-char)

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
  :config (auto-indent-global-mode))

;; ereader
;; fontawesome
;; gnugo
;; google-contacts
;; google-maps
;; google-this
;; google-translate
;; hackernews
;; hacker-typer
;; heroku
;; hide-comnt
;; hl-anything
;; hl-indent
;; hlinum
;; lorem-ipsum
;; mode-icons
;; nanowrimo
;; nginx-mode
;; octopress
;; offlineimap
;; paradox
;; podcaster
;; pomodoro
;; pretty-lambdada
;; pretty-mode
;; prodigy
;; rainbow-blocks
;; rainbow-mode
;; ranger
;; roguel-ike
;; runner
;; screenshot
;; tabula-rasa
;; thesaurus
;; transmission
;; xkcd
