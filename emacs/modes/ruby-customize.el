(autoload 'enh-ruby-mode "enh-ruby-mode" "Enhanced Ruby Mode" t)

(autoload 'rake "rake" "Rake" t)
(autoload 'global-rbenv-mode "rbenv")
(autoload 'global-rinari-mode "rinari")
(autoload 'ruby-block-mode "ruby-block")
(autoload 'robe-mode "robe")
(autoload 'company-robe "company-robe")
(autoload 'ruby-style "ruby-style")
(autoload 'ruby-block-mode "ruby-block")
(autoload 'toggle-ruby-hash-syntax "ruby-hash-syntax")
(autoload 'yard-mode "yard-mode")

(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
(autoload 'ruby-mode "ruby-mode" "Mode for editing ruby source files" t)
(autoload 'inf-ruby "inf-ruby" "Run an inferior Ruby process" t)
(autoload 'rubydb "rubydb3x" "Ruby debugger" t)

(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rabl$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Vagrantfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . enh-ruby-mode))

(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))

(add-hook 'enh-ruby-mode-hook 'inf-ruby-minor-mode)
(add-hook 'enh-ruby-mode-hook 'turn-on-font-lock)
(add-hook 'enh-ruby-mode-hook 'robe-mode)
(add-hook 'enh-ruby-mode-hook 'flycheck-mode)
(add-hook 'enh-ruby-mode-hook 'yard-mode)
(add-hook 'enh-ruby-mode-hook 'eldoc-mode)
(add-hook 'enh-ruby-mode-hook 'pretty-mode)
(add-hook 'enh-ruby-mode-hook 'smartparens-mode)
(add-hook 'enh-ruby-mode-hook 'projectile-rails-on)
(add-hook 'enh-ruby-mode-hook
          (lambda ()
            (flyspell-prog-mode)
            (ruby-tools-mode)
            (rubocop-mode)))

(eval-after-load "enh-ruby-mode"
  '(progn
     (require 'smartparens-ruby)
     (global-rbenv-mode)
     (global-rinari-mode)

     (define-key enh-ruby-mode-map (kbd "C-c C-H") 'ruby-toggle-hash-syntax)
     (define-key enh-ruby-mode-map (kbd "<backtab>") 'enh-ruby-indent-exp)
     (define-key enh-ruby-mode-map (kbd "TAB") 'ruby-indent-line)
     (define-key enh-ruby-mode-map (kbd "RET") 'newline)
     (define-key enh-ruby-mode-map (kbd "C-c g m") 'rails-gen-migration)

     (setq ruby-program "/home/sean/.rbenv/shims/ruby")
     (setq enh-ruby-program "/home/sean/.rbenv/shims/ruby")

     (setq rbenv-installation-dir "~/.rbenv")

     (ruby-block-mode t)
                                        ;(ruby-style-c-mode)

     (setq ruby-block-highlight-toggle t)
     (setq rinari-tags-file-name "TAGS")

     (push 'company-robe company-backends)

     (add-to-list 'hs-special-modes-alist
                  '(enh-ruby-mode
                    "\\(def\\|do\\|{\\)" "\\(end\\|end\\|}\\)" "#"
                    (lambda (arg) (ruby-end-of-block)) nil))
     (setq enh-ruby-use-encoding-map nil
           ;; don't deep indent arrays and hashes
           enh-ruby-deep-indent-paren nil)

     (setq exec-path
           (cons
            (concat
             (getenv "HOME") "/.rbenv/shims")
            (cons
             (concat
              (getenv "HOME") "/.rbenv/bin")
             (cons
              (concat "/usr/local/node/bin")
              exec-path))))))

(eval-after-load "rbenv"
  '(progn
     (setq rbenv-installation-dir "~/.rbenv")))

(add-to-list 'hs-special-modes-alist
             '(ruby-mode
               "\\(def\\|do\\|{\\)" "\\(end\\|end\\|}\\)" "#"
               (lambda (arg) (ruby-end-of-block)) nil))

(defadvice ruby-indent-line (after unindent-closing-paren activate)
  (let ((column (current-column))
        indent offset)
    (save-excursion
      (back-to-indentation)
      (let ((state (syntax-ppss)))
        (setq offset (- column (current-column)))
        (when (and (eq (char-after) ?\))
                   (not (zerop (car state))))
          (goto-char (cadr state))
          (setq indent (current-indentation)))))
    (when indent
      (indent-line-to indent)
      (when (> offset 0) (forward-char offset)))))

(defun rails-gen-migration (args)
  "Runs 'rails g migration ARGS' and opens the new migration in a buffer."
  (interactive
   (list (read-string "generate migration: ")))
  (let
      ((command (format "%sbin/rails generate migration %s" (rinari-root) args))
       (result nil))
    (message "calling: %s" command)
    (setq result (shell-command-to-string command))
    (if (string-match "^ *create *\\(db/migrate/.*\\.rb\\)$" result)
        (find-file (format "%s%s" (rinari-root) (substring result (match-beginning 1) (match-end 1))))
      (progn
        (message "failure to create migration: %s" result)
        (get-buffer "*Messages*")
        (message "command failed: %s" command)))))

(provide 'ruby-customize)
