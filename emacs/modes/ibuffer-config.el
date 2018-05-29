;;; ibuffer-config.el -- Summary
;;; Commentary:
;;; Code:

(use-package ibuffer
  :ensure t
  :commands ibuffer
  :bind (:map ibuffer-mode-map
         ("M-o" . ace-window)
         ("P" . ibuffer-projectile-set-filter-groups))
  :config
  (progn
    (setq ibuffer-saved-filter-groups
          '(("Config" (filename . ".emacs.d/"))
            ("Shell"  (or
                       (mode . eshell-mode)
                       (mode . shell-mode)))
            ("Dired"  (mode . dired-mode))
            ("Prose"  (or
                       (mode . tex-mode)
                       (mode . plain-tex-mode)
                       (mode . latex-mode)
                       (mode . rst-mode)
                       (mode . markdown-mode)))
            ("Haskell" (mode . haskell-mode))
            ("Org"    (mode . org-mode))
            ("Gnus"   (or
                       (mode . message-mode)
                       (mode . gnus-group-mode)
                       (mode . gnus-summary-mode)
                       (mode . gnus-article-mode)))
            ("Emacs"  (name . "^\\*.*\\*$"))
            ("Weechat" (name . "^freenode\.")))
          ibuffer-show-empty-filter-groups nil
          ibuffer-expert t)

    (add-hook 'ibuffer-mode-hook
              '(lambda ()
                 (ibuffer-auto-mode 1)))

    (defadvice ibuffer-update-title-and-summary (after remove-column-titles)
      (with-current-buffer (get-buffer "*Ibuffer*")
        (read-only-mode 0)
        (goto-char 1)
        (search-forward "-\n" nil t)
        (delete-region 1 (point))
        (let ((window-min-height 1))
          ;; save a little screen estate
          (shrink-window-if-larger-than-buffer))
        (read-only-mode 1)))
    (ad-activate 'ibuffer-update-title-and-summary)

    ;; Use human readable Size column instead of original one
    (define-ibuffer-column size-h
      (:name "Size" :inline t)
      (cond
       ((> (buffer-size) 1000000) (format "%7.1fM" (/ (buffer-size) 1000000.0)))
       ((> (buffer-size) 100000) (format "%7.0fk" (/ (buffer-size) 1000.0)))
       ((> (buffer-size) 1000) (format "%7.1fk" (/ (buffer-size) 1000.0)))
       (t (format "%8d" (buffer-size)))))

    ;; Modify the default ibuffer-formats
    (setq ibuffer-formats
          '((mark modified read-only " "
                  (name 18 18 :left :elide)
                  " "
                  (size-h 9 -1 :right)
                  " "
                  (mode 16 16 :left :elide)
                  " "
                  filename-and-process)))


    ;; (use-package ibuffer-vc
    ;;   :ensure t
    ;;   :commands ibuffer-vc-generate-filter-groups-by-vc-root
    ;;   :init
    ;;   (progn
    ;;     (defun nox/ibuffer-apply-filter-groups ()
    ;;       "Combine my saved ibuffer filter groups with those generated
    ;;  by `ibuffer-vc-generate-filter-groups-by-vc-root'"
    ;;       (interactive)
    ;;       (setq ibuffer-filter-groups
    ;;             (append (ibuffer-vc-generate-filter-groups-by-vc-root)
    ;;                     ibuffer-saved-filter-groups))
    ;;       (message "ibuffer-vc: groups set")
    ;;       (let ((ibuf (get-buffer "*Ibuffer*")))
    ;;         (when ibuf
    ;;           (with-current-buffer ibuf
    ;;             (pop-to-buffer ibuf)
    ;;             (ibuffer-update nil t)))))
    ;;     (add-hook 'ibuffer-hook 'nox/ibuffer-apply-filter-groups)))

    (use-package ibuffer-projectile
      :init
      (add-hook 'ibuffer-hook
                (lambda ()
                  (ibuffer-projectile-set-filter-groups)
                  (unless (eq ibuffer-sorting-mode 'alphabetic)
                    (ibuffer-do-sort-by-alphabetic)))))
    ))


;; (defvar sean:filename-subs
;;   '(("/home/sean" . "~")
;;     (".*/Go/src/github.com/" . "~gosrc/")
;;     ("/home/sean/.emacs.d/" . "~emacs/")
;;     ;; ("/home/jpace/proj/org/incava/" . "~incava/")
;;     ))


(provide 'ibuffer-config)
;;; ibuffer-config.el ends here
