;;; git-config.el --- Summary
;;; Commentary:
;;; Code:

;; git-gutter
;; git-gutter+
;; git-gutter-fringe
;; gitattributes-mode
;; gitconfig
;; gitconfig-mode
;; github-browse-file
;; github-clone
;; github-issues
;; github-pullrequest
;; github-search
;; what-the-commit
;; yagist


;; (use-package git-gutter
;;   :demand t
;;   :bind (("C-x C-g" . git-gutter:toggle)
;;          ("C-x C-y" . git-gutter:clear)))

(use-package git-gutter+
  :diminish git-gutter+-mode)


;; (require 'yagist)
;; (require 'git-gutter)
;; ;; (require 'git-blame)
;; (require 'gh)
;; (require 'gitconfig-mode)
;; (require 'git-dwim)
;; (require 'git-gutter+)
;; (require 'git-gutter-fringe)
;; (require 'github-browse-file)
;; (require 'gitignore-mode)
;; (global-git-gutter-mode t)
