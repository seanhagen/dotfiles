(require 'rinari)
(require 'rbenv)
(require 'ruby-additional)
(require 'enh-ruby-mode)
(require 'ruby-block)
(require 'ruby-compilation)
;(require 'rsense)
(require 'ruby-electric)
;(require 'ruby-end)
(require 'ruby-tools)
(require 'rhtml-mode)
(require 'rspec-mode)
(require 'ruby-test-mode)
(require 'inf-ruby)

(setq rbenv-installation-dir "~/.rbenv")
(setq ruby-block-highlight-toggle t)
(setq rinari-tags-file-name "TAGS")
(setq rsense-home "/home/sean/opt/rsense")

(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
(autoload 'ruby-mode "ruby-mode" "Mode for editing ruby source files" t)
;(autoload 'inf-ruby-keys "inf-ruby" "Set local key defs for inf-ruby in ruby-mode" t)
(autoload 'inf-ruby "inf-ruby" "Run an inferior Ruby process" t)
(autoload 'rubydb "rubydb3x" "Ruby debugger" t)

(add-hook 'ruby-mode-hook 'inf-ruby-minor-mode)
(add-hook 'enh-ruby-mode-hook 'inf-ruby-minor-mode)
(add-hook 'ruby-mode-hook 'turn-on-font-lock)
;; (add-hook 'ruby-mode-hook
;; 					(lambda ()
;; 						(add-to-list 'ac-sources 'ac-source-rsense-method)
;; 						(add-to-list 'ac-sources 'ac-source-rsense-constant)))
;; (add-hook 'ruby-mode-hook
;; 					(lambda ()
;; 						(local-set-key (kbd "C-c .") 'rsense-complete)))

(add-to-list 'auto-mode-alist '("\\.rb$" . setup-ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))

(setq ruby-program "/home/sean/.rbenv/shims/ruby")
(setq enh-ruby-program "/home/sean/.rbenv/shims/ruby")
(setq flymake-ruby-executable "/home/sean/.rbenv/shims/ruby")

(add-to-list 'auto-mode-alist '("\\.rb$" . setup-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . setup-ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . setup-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . setup-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . setup-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . setup-ruby-mode))
(add-to-list 'auto-mode-alist '("Vagrantfile$" . setup-ruby-mode))
;(add-to-list 'load-path (concat rsense-home "/etc"))

(add-to-list 'hs-special-modes-alist
             '(ruby-mode
               "\\(def\\|do\\|{\\)" "\\(end\\|end\\|}\\)" "#"
               (lambda (arg) (ruby-end-of-block)) nil))

(push '("^\\(.*\\):\\([0-9]+\\): \\(.*\\)$" 1 2 nil 3) flymake-err-line-patterns)

(defun setup-ruby-mode ()
  (interactive)
  (global-rbenv-mode)
  (enh-ruby-mode)
  (global-rinari-mode)
  (ruby-style-c-mode)
  (flymake-ruby-load)
  (ruby-block-mode t)
  ;(inf-ruby-keys)
  (flymake-ruby-init))

(defun flymake-ruby-init ()
  (let* ((temp-file   (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
         (local-file  (file-relative-name
                       temp-file
                       (file-name-directory buffer-file-name))))
    (list "ruby" (list "-c" local-file))))


(provide 'ruby-customize)
