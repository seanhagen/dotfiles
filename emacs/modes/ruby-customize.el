(autoload 'enh-ruby-mode "enh-ruby-mode" "Enhanced Ruby Mode" t)

(autoload 'global-rbenv-mode "rbenv")
(autoload 'global-rinari-mode "rinari")
(autoload 'ruby-block-mode "ruby-block")
(autoload 'company-robe "robe")
(autoload 'ruby-style "ruby-style")
(autoload 'ruby-block-mode "ruby-block")


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
(add-to-list 'auto-mode-alist '("Vagrantfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . enh-ruby-mode))

(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))

(eval-after-load "enh-ruby-mode"
  '(progn
     ;;(require 'ruby-additional)
     (add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))
     (add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))

     (add-hook 'ruby-mode-hook 'inf-ruby-minor-mode)
     (add-hook 'enh-ruby-mode-hook 'inf-ruby-minor-mode)
     (add-hook 'ruby-mode-hook 'turn-on-font-lock)
     (add-hook 'ruby-mode-hook 'robe-mode)
     (add-hook 'enh-ruby-mode-hook 'robe-mode)
     ;(add-hook 'enh-ruby-mode-hook 'ruby-electric-mode)

     (global-rbenv-mode)
     (global-rinari-mode)

     (setq ruby-program "/home/sean/.rbenv/shims/ruby")
     (setq enh-ruby-program "/home/sean/.rbenv/shims/ruby")

     (setq rbenv-installation-dir "~/.rbenv")     

     (ruby-block-mode t)
     ;(ruby-style-c-mode)

     (setq ruby-block-highlight-toggle t)
     (setq rinari-tags-file-name "TAGS")

     (push 'company-robe company-backends)
     
     (require 'rake-autoloads)

     (add-to-list 'hs-special-modes-alist
                  '(enh-ruby-mode
                    "\\(def\\|do\\|{\\)" "\\(end\\|end\\|}\\)" "#"
                    (lambda (arg) (ruby-end-of-block)) nil))

     (setenv "PATH" 
             (concat (getenv "HOME") "/.rbenv/shims:" 
                     (getenv "HOME") "/.rbenv/bin:" 
                     "/usr/local/node/bin"
                     (getenv "PATH")))

     (setq exec-path 
           (cons 
            (concat 
             (getenv "HOME") "/.rbenv/shims") 
            (cons 
             (concat 
              (getenv "HOME") "/.rbenv/bin")
             (cons
              (concat "/usr/local/node/bin")
              exec-path))))

     ))

(eval-after-load "rbenv"
  '(progn
     (setq rbenv-installation-dir "~/.rbenv")))
     
(add-to-list 'hs-special-modes-alist
             '(ruby-mode
               "\\(def\\|do\\|{\\)" "\\(end\\|end\\|}\\)" "#"
               (lambda (arg) (ruby-end-of-block)) nil))

(provide 'ruby-customize)
