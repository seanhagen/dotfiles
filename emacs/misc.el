;; General Stuff
(load "server")
(unless (server-running-p) (server-start))
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(setq inhibit-startup-message t)
(fset 'yes-or-no-p 'y-or-n-p)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(display-time-mode 1)

(setq exec-path (cons (expand-file-name "~/.rbenv/shims") exec-path))

(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(transient-mark-mode 1)
(line-number-mode 1)
(column-number-mode 1)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq c-basic-offset 2)

(set-face-attribute 'default nil :foreground "white smoke")

(show-paren-mode 1)
(setq create-lockfiles nil)

;; Set region background colour
;;(set-face-background 'region "grey")

;; Set emacs background colour
(set-background-color "black")

;; auto-save stuff
(make-directory "~/tmp/emacs" t)
(defvar backup-dir (expand-file-name "~/tmp/emacs"))
(defvar autosave-dir (expand-file-name "~/tmp/emacs"))
(setq backup-directory-alist (list (cons ".*" backup-dir)))
(setq auto-save-list-file-prefix autosave-dir)
(setq auto-save-file-name-transforms `((".*" ,autosave-dir t)))
(setq temporary-file-directory "~/tmp/emacs")

(setq
   backup-by-copying t      ; don't clobber symlinks
   delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)       ; use versioned backups

;; Emacs package manager!
(require 'package)
(setq package-archives
      '(
        ;("ELPA" . "http://tromey.com/elpa/")
        ("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.milkbox.net/packages/")
        ("marmalade" . "http://marmalade-repo.org/packages/")))

; Apparently needed for the package auto-complete (why?)
;; (add-to-list
;;  'package-archives
;;  '("melpa" . "http://melpa.milkbox.net/packages/") t)

;;(package-initialize)
(setq url-http-attempt-keepalives nil)

(dolist (k '([mouse-1] [down-mouse-1] [drag-mouse-1] [double-mouse-1] [triple-mouse-1]
             [mouse-2] [down-mouse-2] [drag-mouse-2] [double-mouse-2] [triple-mouse-2]
             [mouse-3] [down-mouse-3] [drag-mouse-3] [double-mouse-3] [triple-mouse-3]
             [mouse-4] [down-mouse-4] [drag-mouse-4] [double-mouse-4] [triple-mouse-4]
             [mouse-5] [down-mouse-5] [drag-mouse-5] [double-mouse-5] [triple-mouse-5]))
  (global-unset-key k))

;; (defvar flymake-fringe-overlays nil)
;; (make-variable-buffer-local 'flymake-fringe-overlays)

;; (defadvice flymake-make-overlay (after add-to-fringe first
;;                                  (beg end tooltip-text face mouse-face)
;;                                  activate compile)
;;   (push (fringe-helper-insert-region
;;          beg end
;;          (fringe-lib-load (if (eq face 'flymake-errline)
;;                               fringe-lib-exclamation-mark
;;                             fringe-lib-question-mark))
;;          'left-fringe 'font-lock-warning-face)
;;         flymake-fringe-overlays))

;; (defadvice flymake-delete-own-overlays (after remove-from-fringe activate
;;                                         compile)
;;   (mapc 'fringe-helper-remove flymake-fringe-overlays)
;;   (setq flymake-fringe-overlays nil))

(autoload 'ack-same "full-ack" nil t)
(autoload 'ack "full-ack" nil t)
(autoload 'ack-find-same-file "full-ack" nil t)
(autoload 'ack-find-file "full-ack" nil t)

;; on Debian/Ubuntu you'll need to set the executable
(setq ack-executable (executable-find "ack-grep"))

;; UTF-8 please
(setq locale-coding-system 'utf-8) ; pretty
(set-terminal-coding-system 'utf-8) ; pretty
(set-keyboard-coding-system 'utf-8) ; pretty
(set-selection-coding-system 'utf-8) ; please
(prefer-coding-system 'utf-8) ; with sugar on top

(setq default-frame-alist
      (append default-frame-alist
              '((foreground-color . "white")
                (background-color . "black"))))


(if after-init-time (sml/setup)
  (add-hook 'after-init-hook 'sml/setup))

(defadvice vc-git-mode-line-string
  (after plus-minus (file) compile activate)
  (setq ad-return-value
	(concat ad-return-value
		(let ((plus-minus (vc-git--run-command-string
				   file "diff" "--numstat" "--")))
		  (and plus-minus
		       (string-match "^\\([0-9]+\\)\t\\([0-9]+\\)\t" plus-minus)
		       (format " +%s-%s" (match-string 1 plus-minus) (match-string 2 plus-minus)))))))

;; (add-to-list 'sml/replacer-regexp-list '("^~/Code/PHP/BBTV" ":BBTV:") )
;; (add-to-list 'sml/replacer-regexp-list '("^~/Code/DevOps" ":DevOps:") )

;; uncomment this line to see how these words get turned into symbols
;and or not lambda nil function != == >= <= && !! ||

(setq oauth-nonce-function 'oauth-internal-make-nonce)

(set-default-font "Bitstream Vera Sans Mono-10")

(setenv "PATH"
        (concat "/usr/local/java/bin"
                (getenv "PATH")))


(require 'tramp)
(require 'multi-term)
(require 'rainbow-delimiters)
