(add-to-list 'auto-mode-alist '("\\.php\\'" . php+-mode))

;; for php-repl
(add-to-list 'load-path "~/bin/php_repl/data")

;; (add-hook 'php+-mode-hook 'startup-php-stuff)

;; (require 'php+-mode)
;; (php+-mode-setup)

(defun startup-php-stuff ()
  (interactive)
  (require 'php-mode)
  (require 'php-extras)
  (require 'php-electric)
  (require 'php-repl)
  (require 'php-electric)
  (require 'inf-php)
  (add-hook 'php-mode-hook 'setup-php-hooks)
  (autoload 'geben "geben" "DBGp protocol frontend, a script debugger" t)
  (flymake-php-load)
  ;;(setq php-mode-force-pear t)
  (clean-php-mode)
  (git-gutter-mode)
  (my-php-mode-stuff)
  
  (c-set-offset 'arglist-intro 'ywb-php-lineup-arglist-intro)
  (c-set-offset 'arglist-close 'ywb-php-lineup-arglist-close))

;; bind compiling with get-above-makefile to f5
  (global-set-key [f5]
                  (lambda ()
                    (interactive)
                    (compile
                     (format "cd %s; vendor/bin/phpunit" (php-project-directory)))))
  '(lambda ()
     (setq ac-sources 
           '(ac-source-gtags ac-source-php-completion ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers)))
  '(lambda ()
  '(lambda ()
     (when (require 'auto-complete nil t)
       (make-variable-buffer-local 'ac-sources)
       (add-to-list 'ac-sources 'ac-source-php-completion)
       ;; if you like patial match,
       ;; use `ac-source-php-completion-patial' instead of `ac-source-php-completion'.
       ;;(add-to-list 'ac-sources 'ac-source-php-completion-patial)
       (auto-complete-mode t))))

(defun my-php-mode-stuff ()
  (local-set-key (kbd "<f1>") 'my-php-function-lookup)
  (local-set-key (kbd "C-<f1>") 'my-php-symbol-lookup))

(defun my-php-symbol-lookup ()
  (interactive)
  (let ((symbol (symbol-at-point)))
    (if (not symbol)
        (message "No symbol at point.")
      (browse-url (concat "http://php.net/manual-lookup.php?pattern="
                          (symbol-name symbol))))))

(defun my-php-function-lookup ()
  (interactive)
  (let* ((function (symbol-name (or (symbol-at-point)
                                    (error "No function at point."))))
         (buf (url-retrieve-synchronously (concat "http://php.net/manual-lookup.php?pattern=" function))))
    (with-current-buffer buf
      (goto-char (point-min))
        (let (desc)
          (when (re-search-forward "<div class=\"methodsynopsis dc-description\">\\(\\(.\\|\n\\)*?\\)</div>" nil t)
            (setq desc
              (replace-regexp-in-string
                " +" " "
                (replace-regexp-in-string
                  "\n" ""
                  (replace-regexp-in-string "<.*?>" "" (match-string-no-properties 1)))))

            (when (re-search-forward "<p class=\"para rdfs-comment\">\\(\\(.\\|\n\\)*?\\)</p>" nil t)
              (setq desc
                    (concat desc "\n\n"
                            (replace-regexp-in-string
                             " +" " "
                             (replace-regexp-in-string
                              "\n" ""
                              (replace-regexp-in-string "<.*?>" "" (match-string-no-properties 1))))))))

          (if desc
              (message desc)
            (message "Could not extract function info. Press C-F1 to go the description."))))
    (kill-buffer buf)))

(defun ywb-php-lineup-arglist-intro (langelem)
  (save-excursion
    (goto-char (cdr langelem))
    (vector (+ (current-column) c-basic-offset))))
(defun ywb-php-lineup-arglist-close (langelem)
  (save-excursion
    (goto-char (cdr langelem))
    (vector (current-column))))


(defun clean-php-mode ()
  (interactive)
  (setq-default indent-tabs-mode nil)
  (setq-default tab-width 4)
  (setq c-basic-offset 4)
  (setq c-basic-indent 4)
  (setq tab-width 4)
  (setq indent-tabs-mode nil)
  (setq fill-column 78)
  (c-set-offset 'case-label '+)
  (c-set-offset 'arglist-cont-nonempty 'c-lineup-math)
  (c-set-offset 'topmost-intro-cont 'c-lineup-cascaded-calls)
  (c-set-offset 'brace-list-entry 'c-lineup-cascaded-calls))

(provide 'php-customize)
