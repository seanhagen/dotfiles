;;; helm-config.el --- Summary
;;; Commentary:
;;; Code:

(use-package helm
  :bind (("M-x" . helm-M-x)
         ("C-c o" . helm-flycheck)
         ("C-x b" . helm-buffers-list)
         ("C-c k" . helm-make)
         ;;("C-x C-f" . helm-find-files)
         ("C-h a" . helm-apropos)
         ("C-x p" . helm-top)
         ("C-c C-o" . helm-occur)
         ("C-c C-g" . helm-do-grep)
         ("C-c w" . helm-wikipedia-suggest)
         ("C-c C-y" . helm-youtube)
         ("C-c C-m" . helm-all-mark-rings))
  :config
  (setq helm-split-window-in-side-p           t
        helm-mode-fuzzy-match                 t
        helm-completion-in-region-fuzzy-match t
        helm-buffers-fuzzy-matching           t
        helm-M-x-fuzzy-match                  t
        helm-move-to-line-cycle-in-source     t
        helm-ff-search-library-in-sexp        t
        helm-ff-file-name-history-use-recentf t
        helm-autoresize-mode                  t
        helm-github-stars-username "seanhagen")

  (use-package helm-projectile
    :config
    (defvar helm-source-file-not-found
      (helm-build-dummy-source
          "Create file"
        :action 'find-file))
    (add-to-list 'helm-projectile-sources-list helm-source-file-not-found t)
    :init
    (helm-projectile-on))
  (use-package helm-cider
    :init (add-hook 'cider-mode-hook (lambda () (helm-cider-mode 1))))
  (use-package helm-circe))

;;(use-package helm-rb)

;; helm
;; helm-ack
;; helm-aws
;; helm-bbdb
;; helm-chrome
;; helm-cider
;; helm-circe
;; helm-company
;; helm-css-scss
;; helm-dictionary
;; helm-emms
;; helm-firefox
;; helm-flycheck
;; helm-flyspell
;; helm-git
;; helm-github-stars
;; helm-gitignore
;; helm-go-package
;; helm-google
;; helm-ispell
;; helm-ls-git
;; helm-make
;; helm-notmuch
;; helm-open-github
;; helm-package
;; helm-projectile
;; helm-rage
;; helm-rails
;; helm-robe
;; helm-rubygems-l...
;; helm-rubygems-org
;; helm-tramp
;; helm-w3m
;; helm-youtube
