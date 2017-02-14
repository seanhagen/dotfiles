(use-package enh-ruby-mode
  :mode "\\.rb$" "\\.rabl$" "\\.rake$" "Rakefile$" ".gemspec$" "\\.ru$" "Gemfile$" "Capfile$"
  :bind (:map enh-ruby-mode-map
              ("C-c C-H" . ruby-toggle-hash-syntax)
              ("<backtab>" . enh-ruby-indent-exp)
              ("TAB" . ruby-indent-line)
              ("RET" . newline)
              ("C-c g m" . rails-gen-migration))
  :init
  (add-hook 'enh-ruby-mode-hook 'inf-ruby-minor-mode)
  (add-hook 'enh-ruby-mode-hook 'turn-on-font-lock)
  ;; (add-hook 'enh-ruby-mode-hook 'flycheck-mode)
  ;; (add-hook 'enh-ruby-mode-hook 'yard-mode)
  ;; (add-hook 'enh-ruby-mode-hook 'smartparens-mode)
  (add-hook 'enh-ruby-mode-hook 'eldoc-mode)
  (add-hook 'enh-ruby-mode-hook 'projectile-rails-on)
  (add-hook 'enh-ruby-mode-hook
            (lambda ()
              (flyspell-prog-mode)
              (ruby-tools-mode)
              (rubocop-mode)))

  (add-hook 'enh-ruby-mode-hook
            (lambda ()
              (set (make-local-variable 'compile-command)
                   (concat "ruby -W1 " buffer-file-name))))

  :config
  (setq enh-ruby-use-encoding-map nil
        enh-ruby-deep-indent-paren nil))

(use-package rspec-mode
  :commands rspec-mode
  :init
  (add-hook 'enh-ruby-mode 'rspec-mode))

(use-package rbenv
  :diminish rbenv
  :config
  (global-rbenv-mode)
  (setq rbenv-installation-dir "~/.rbenv"))

(use-package yard-mode
  :commands yard-mode
  :diminish yard-mode
  :init (add-hook 'enh-ruby-mode-hook 'yard-mode))

(use-package robe
  :after company
  ;; :diminish robe-mode
  :commands robe-mode
  :init (add-hook 'enh-ruby-mode-hook 'robe-mode)
  :config (push 'company-robe company-backends))

(use-package inf-ruby
  :commands inf-ruby-minor-mode inf-ruby
  :bind (("C-c C-r r" . inf-ruby))
  :init (add-hook 'enh-ruby-mode-hook 'inf-ruby-minor-mode))

(use-package ruby-tools
  :commands ruby-tools-mode
  :init (add-hook 'enh-ruby-mode-hook 'ruby-tools-mode))

(use-package yari
  :commands yari-helm
  :bind (:map enh-ruby-mode-map
              ("<f1>" . yari-helm))
  :init (add-hook 'enh-ruby-mode-hook 'ri-bind-key))

(use-package rinari
  :commands rinari-minor-mode
  :diminish rinari-minor-mode
  :init (add-hook 'enh-ruby-mode-hook 'rinari-minor-mode)
  :config (setq rinari-tags-file-name "TAGS"))

(use-package ruby-style
  :diminish ruby-style
  :commands ruby-style
  :init
  (add-hook 'enh-ruby-mode-hook 'ruby-style))

(use-package rubocop
  ;; :diminish rubocop-mode
  :commands rubocop-mode
  :init
  (add-hook 'enh-ruby-mode-hook 'rubocop-mode))

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

;; rails-log-mode
;; rsense
