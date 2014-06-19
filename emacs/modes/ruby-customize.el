(require 'rinari)
(require 'rbenv)
(require 'ruby-additional)
(require 'enh-ruby-mode)
(require 'ruby-block)
(require 'ruby-compilation)
(require 'rsense)
(require 'yari)

(require 'ruby-electric)

;(require 'ruby-end)

(require 'ruby-tools)
(require 'rhtml-mode)
(require 'rspec-mode)
(require 'ruby-test-mode)
(require 'inf-ruby)

(require 'robe)

(setq rbenv-installation-dir "~/.rbenv")
(setq ruby-block-highlight-toggle t)
(setq rinari-tags-file-name "TAGS")
(setq rsense-home "/home/sean/opt/rsense")

;; rbenv stuff
(setenv "PATH" (concat (getenv "HOME") "/.rbenv/shims:" (getenv "HOME") "/.rbenv/bin:" (getenv "PATH")))
(setq exec-path (cons (concat (getenv "HOME") "/.rbenv/shims") (cons (concat (getenv "HOME") "/.rbenv/bin") exec-path)))

(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
(autoload 'ruby-mode "ruby-mode" "Mode for editing ruby source files" t)
(autoload 'inf-ruby "inf-ruby" "Run an inferior Ruby process" t)
(autoload 'rubydb "rubydb3x" "Ruby debugger" t)

(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Vagrantfile$" . setup-ruby-mode)) 

(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))


(add-hook 'enh-ruby-mode-hook 'inf-ruby-minor-mode)
(add-hook 'enh-ruby-mode-hook 'robe-mode)
(add-hook 'enh-ruby-mode-hook 'ruby-tools-mode)
(add-hook 'enh-ruby-mode-hook 'rinari-minor-mode)

(add-hook 'enh-ruby-mode-hook
					(lambda ()
						(add-to-list 'ac-sources 'ac-source-rsense-method)
						(add-to-list 'ac-sources 'ac-source-rsense-constant)))
(add-hook 'enh-ruby-mode-hook
					(lambda ()
						(local-set-key (kbd "C-c .") 'rsense-complete)))

(setq ruby-program "/home/sean/.rbenv/shims/ruby")
(setq enh-ruby-program "/home/sean/.rbenv/shims/ruby")
(setq flymake-ruby-executable "/home/sean/.rbenv/shims/ruby")

(add-to-list 'load-path (concat rsense-home "/etc"))

(add-to-list 'hs-special-modes-alist
             '(ruby-mode
               "\\(def\\|do\\|{\\)" "\\(end\\|end\\|}\\)" "#"
               (lambda (arg) (ruby-end-of-block)) nil))

(push '("^\\(.*\\):\\([0-9]+\\): \\(.*\\)$" 1 2 nil 3) flymake-err-line-patterns)

(provide 'ruby-customize)
