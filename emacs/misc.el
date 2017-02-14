;; Emacs package manager!
(require 'package)
(setq package-archives
      '(
        ("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.milkbox.net/packages/")
        ("marmalade" . "http://marmalade-repo.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))
(package-initialize)

;; General Stuff
(load "server")
(unless (server-running-p) (server-start))
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(setq inhibit-startup-message t)
(fset 'yes-or-no-p 'y-or-n-p)

(add-hook 'before-save-hook 'cleanup-buffer-safe)

(display-time-mode 1)

(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(transient-mark-mode 1)
(line-number-mode 1)
(column-number-mode 1)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq c-basic-offset 2)

(set-language-environment "UTF-8")

(show-paren-mode 1)
(defadvice show-paren-function
    (after show-matching-paren-offscreen activate)
  "If the matching paren is offscreen, show the matching line in the echo area.  Has no effect if the character before point is not of the syntax class ')'.  "
  (interactive)
  (let* ((cb (char-before (point)))
         (matching-text (and cb
                             (char-equal (char-syntax cb) ?\) )
                             (blink-matching-open))))
    (when matching-text (message matching-text))))

(setq create-lockfiles nil)

;; auto-save stuff
(make-directory "/tmp/emacs" t)
(defvar backup-dir (expand-file-name "/tmp/emacs"))
(defvar autosave-dir (expand-file-name "/tmp/emacs"))

(setq
 backup-directory-alist (list (cons ".*" backup-dir))
 auto-save-list-file-prefix autosave-dir
 auto-save-file-name-transforms `((".*" ,autosave-dir t))
 temporary-file-directory "/tmp/emacs"
 backup-by-copying t      ; don't clobber symlinks
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t ; use versioned backups
 url-http-attempt-keepalives nil
 ack-executable (executable-find "ack-grep")
 locale-coding-system 'utf-8
 oauth-nonce-function 'oauth-internal-make-nonce)

(setq-default indicate-empty-lines t)
(when (not indicate-empty-lines)
  (toggle-indicate-empty-lines))

(dolist (k '([mouse-1] [down-mouse-1] [drag-mouse-1] [double-mouse-1] [triple-mouse-1]
             [mouse-2] [down-mouse-2] [drag-mouse-2] [double-mouse-2] [triple-mouse-2]
             [mouse-3] [down-mouse-3] [drag-mouse-3] [double-mouse-3] [triple-mouse-3]
             [mouse-4] [down-mouse-4] [drag-mouse-4] [double-mouse-4] [triple-mouse-4]
             [mouse-5] [down-mouse-5] [drag-mouse-5] [double-mouse-5] [triple-mouse-5]))
  (global-unset-key k))

(autoload 'ack-same "full-ack" nil t)
(autoload 'ack "full-ack" nil t)
(autoload 'ack-find-same-file "full-ack" nil t)
(autoload 'ack-find-file "full-ack" nil t)

;; UTF-8 please
(set-terminal-coding-system 'utf-8) ; pretty
(set-keyboard-coding-system 'utf-8) ; pretty
(set-selection-coding-system 'utf-8) ; please
(prefer-coding-system 'utf-8) ; with sugar on top

;; (if after-init-time (sml/setup)
;;   (add-hook 'after-init-hook 'sml/setup))

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

(set-frame-font "Bitstream Vera Sans Mono-10")
(set-fontset-font "fontset-default" nil
                  (font-spec :size 20 :name "Symbola"))

(setenv "PATH"
        (concat (getenv "HOME") "/.rbenv/shims:"
                (getenv "HOME") "/.rbenv/bin:"
                "/usr/local/java/bin:"
                "/usr/local/node/bin:"
                "/usr/local/go/bin:"
                "/home/sean/Code/Go/bin:"
                (getenv "PATH")))

(setq exec-path
      (cons
       (concat (getenv "HOME") "/.rbenv/shims")
       (cons
        (concat (getenv "HOME") "/.rbenv/bin")
        (cons
         (concat "/usr/local/java/bin")
         (cons
          (concat "/usr/local/node/bin")
          exec-path)))))

(setq exec-path
      (cons
       (concat (getenv "HOME") "/home/sean/Code/Go/bin")
       exec-path))

(setq exec-path
      (cons
       (concat (getenv "HOME") "/usr/local/go/bin")
       exec-path))

(require 'tramp)
(require 'multi-term)
(require 'rainbow-delimiters)

(setq shr-color-visible-luminance-min 80)
