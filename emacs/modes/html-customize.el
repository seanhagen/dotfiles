(require 'show-css)
(add-to-list 'load-path "~/.emacs.d/downloads/html5-el")
(eval-after-load "rng-loc"
  '(add-to-list 'rng-schema-locating-files "~/.emacs.d/modes/html/html5-el/schemas.xml"))
(require 'whattf-dt)

(add-hook 'sgml-mode-hook 'zencoding-mode)

(add-hook 'sgml-mode-hook
          (lambda ()
            (require 'mc-mark-more)
            (define-key sgml-mode-map (kbd "C-c C-r") 'mc/mark-sgml-tag-pair)))

(autoload 'tidy-buffer "tidy" "Run Tidy HTML parser on current buffer" t)
(autoload 'tidy-parse-config-file "tidy" "Parse the `tidy-config-file'" t)
(autoload 'tidy-save-settings "tidy" "Save settings to `tidy-config-file'" t)
(autoload 'tidy-build-menu  "tidy" "Install an options menu for HTML Tidy." t)

(defun my-html-mode-hook () "Customize my html-mode."
  (tidy-build-menu html-mode-map)
  (local-set-key [(control c) (control c)] 'tidy-buffer)
  (setq sgml-validate-command "tidy"))

(add-hook 'html-mode-hook 'my-html-mode-hook)

(defun my-nxml-mode-hook () "Customize my nxml-mode"
  (tidy-build-menu nxml-mode-map)
  (local-set-key [(control c) (control c)] 'tidy-buffer)
  (setq sgml-validate-command "tidy"))

(add-hook 'nxml-mode-hook 'my-nxml-mode-hook)

(defun skip-to-next-blank-line ()
  (interactive)
  (let ((inhibit-changing-match-data t))
    (skip-syntax-forward " >")
    (unless (search-forward-regexp "^\\s *$" nil t)
      (goto-char (point-max)))))

(defun skip-to-previous-blank-line ()
  (interactive)
  (let ((inhibit-changing-match-data t))
    (skip-syntax-backward " >")
    (unless (search-backward-regexp "^\\s *$" nil t)
      (goto-char (point-min)))))

(defun html-wrap-in-tag (beg end)
  (interactive "r")
  (let ((oneline? (= (line-number-at-pos beg) (line-number-at-pos end))))
    (deactivate-mark)
    (goto-char end)
    (unless oneline? (newline-and-indent))
    (insert "</div>")
    (goto-char beg)
    (insert "<div>")
    (unless oneline? (newline-and-indent))
    (indent-region beg (+ end 11))
    (goto-char (+ beg 4))))

(eval-after-load "sgml-mode"
  '(progn
     (define-key html-mode-map [remap forward-paragraph] 'skip-to-next-blank-line)
     (define-key html-mode-map [remap backward-paragraph] 'skip-to-previous-blank-line)
     (define-key html-mode-map (kbd "C-c C-w") 'html-wrap-in-tag)
     (define-key html-mode-map (kbd "/") nil)))


;; Newline after inserting closing tag in html-mode
(defadvice sgml-close-tag (after close-tag-then-newline activate)
  (newline-and-indent))

(defadvice sgml-delete-tag (after reindent-buffer activate)
  (cleanup-buffer))

(provide 'html-customize)
