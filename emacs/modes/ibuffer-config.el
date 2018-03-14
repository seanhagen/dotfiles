;;; ibuffer-config.el -- Summary
;;; Commentary:
;;; Code:

(require 'str)

(defvar sean:filename-subs
  '(("/home/sean" . "~")
    (".*/Go/src/github.com/" . "~gosrc/")
    ("/home/sean/.emacs.d/" . "~emacs/")
    ;; ("/home/jpace/proj/org/incava/" . "~incava/")
    ))

(use-package ibuffer
  :bind (("C-x C-b" . ibuffer)
         :map ibuffer-mode-map
         ("s p" . ibuffer-do-sort-by-filename-or-dired))
  :init
  (add-hook 'ibuffer-hook-mode
            (lambda ()
              (ibuffer-switch-to-saved-filter-groups "default")
              (ibuffer-auto-mode 1)
              ))
  :config
  (defadvice ibuffer (around ibuffer-point-to-most-recent) ()
             "Open ibuffer with cursor pointed to most recent buffer name"
             (let ((recent-buffer-name (buffer-name)))
               ad-do-it
               (ibuffer-jump-to-buffer recent-buffer-name)))
  (define-ibuffer-column dirname
    (:name "Directory"
           :inline nil)
    (buffer-file-name buffer)
    ;; (if (buffer-file-name buffer)
    ;;     (str-replace-all (file-name-directory (buffer-file-name buffer)) sean:filename-subs)
    ;;   (or dired-directory
    ;;       ""))
    )
  (define-ibuffer-sorter filename-or-dired
    "Sort the buffers by their pathname."
    (:description "filenames plus dired")
    (string-lessp
     (with-current-buffer (car a)
       (or buffer-file-name
           (if (eq major-mode 'dired-mode)
               (expand-file-name dired-directory))
           ;; so that all non pathnames are at the end
           "~"))
     (with-current-buffer (car b)
       (or buffer-file-name
           (if (eq major-mode 'dired-mode)
               (expand-file-name dired-directory))
           ;; so that all non pathnames are at the end
           "~"))))

  (setq ibuffer-directory-abbrev-alist
        '(("/home/sean/Code/Go" . "~go")
          ("/home/sean/Code/Go/src/github.com/Z2hMedia/biba_services" . "~bibas"))
        ibuffer-show-empty-filter-groups "default"
        ibuffer-formats
        '((mark modified read-only " "
                (name 30 30 :left :elide)
                " "
                (size 9 -1 :right)
                " " dirname)
          (mark modified read-only " "
                (name 30 30 :left :elide)
                " "
                (size 9 -1 :right)
                " " filename)
          (mark modified read-only " "
                (name 30 30 :left :elide)
                " "
                (size 9 -1 :right)
                " " filename-and-process)
          (mark " "
                (name 30 30 :left :elide)
                " " filename-and-process))
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


(provide 'ibuffer-config)
;;; ibuffer-config.el ends here
