(require 'org)
(require 'org-jekyll)
(require 'org-jira)
(require 'org-octopress)
(require 'org-present)


(setq org-agenda-include-diary t)  
(setq org-agenda-include-all-todo t)
(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)

(setq org-fontify-done-headline t)
(custom-set-faces
 '(org-done ((t (:weight normal
                 :strike-through t))))
 '(org-headline-done
            ((((class color) (min-colors 16) (background dark))
               ( :strike-through t)))))

(setq org-todo-keywords
           '((sequence "TODO(t)" "STARTED(s)" "|" "DONE(d)")
             (sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f)")
             (sequence "|" "CANCELED(c)")))

(setq org-todo-keyword-faces
      '(("TODO" . org-warning) ("STARTED" . "yellow")
        ("DONE" . (:foreground "green" :strike-through t))
        ("CANCELED" . (:foreground "blue" :weight bold))))

(autoload 'org-present "org-present" nil t)

(add-hook 'org-present-mode-hook
					(lambda ()
						(org-present-big)
						(org-display-inline-images)))

(add-hook 'org-present-mode-quit-hook
					(lambda ()
						(org-present-small)
						(org-remove-inline-images)))

(setq org-capture-templates 
      '(("t" "Todo" entry
         (file+headline "~/Documents/GTD/mygtd.org" "Tasks")
         " TODO %^{Brief Description} %^g\n%?\nAdded: %U" :prepend t)
        ("j" "Journal" entry
         (file+headline "~/Documents/GTD/journal.org" "")
         "\n %^{topic} %T \n%i%?\n" :prepend t)
        ("e" "Email Todo" entry
         (file+headline "~/Documents/GTD/mygtd.org" "Tasks")
         "* TODO %^{Brief Description}\n%a\n%?Added: %U\n" :prepend t)
      ))

(provide 'org-customize)
