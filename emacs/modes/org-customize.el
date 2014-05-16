(require 'org)
;;(require 'org-jekyll)
;;(require 'org-jira)
;;(require 'org-octopress)
;;(require 'org-compat)
(require 'org-install)
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
           '((sequence "TODO(t)" "STARTED(s)" "|" "DONE(d!)")
             (sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f)")
             (sequence "|" "CANCELED(c@)")))

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
      '(
        ;; basic todo template
        ("t" "Todo" entry
         (file+headline "~/Dropbox/Org/mygtd.org" "Tasks")
         "* TODO %^{Brief Description} \n%?\nAdded: %U" :prepend t)
        ;; todo template for todos from emails
        ("e" "Email Todo" entry
         (file+headline "~/Dropbox/Org/mygtd.org" "Tasks")
         "* TODO %^{Brief Description}\n%a\n%?Added: %U\n" :prepend t)
        ;; template for receipts
        ("r" "Receipt" entry
         (file+headline "~/Dropbox/Org/finances.org" "Receipts")
         "* %^{BriefDesc} %U %^g\n%?" :prepend t)
        ;; for book reviews
        ("b" "Book" entry
         (file+headline "~/Dropbox/Org/journal.org" "Book Reviews")
         (file "~/.book_template.txt"))
        ;; for film reviews
        ("f" "Film" entry
         (file+headline "~/Dropbox/Org/journal.org" "Film Reviews")
         (file "~/.film_template.txt"))
        ;; for tv episode reviews
        ("v" "TV" entry
         (file+headline "~/Dropbox/Org/journal.org" "TV Episode Reviews")
         (file "~/.tv_template.txt"))
        ;; for stuff i'd like to do someday
        ("s" "Someday" entry
         (file+headline "~/Dropbox/Org/mygtd.org" "Someday")
         "* %^{Someday Heading} %U\n%?\n")
        ;; trip planning ( 2016 road trip )
        ("o" "2016 Road Trip" entry
         (file+headline "~/Dropbox/Org/mygtd.org" "2016 Road Trip")
         "* %^{Heading} %U\n%?\n")
        ;; trip planning ( 2016 road trip )
        ("d" "2018 Road Trip" entry
         (file+headline "~/Dropbox/Org/mygtd.org" "2018 Road Trip")
         "* %^{Heading} %U\n%?\n")
        ;; camping stuff
        ("a" "Camping Stuff" entry
         (file+headline "~/Dropbox/Org/mygtd.org" "Camping")
         "* %^{Heading} %U\n%?\n")
        ;; just a place to capture random stuff
        ("c" "Clipboard" entry
         (file+headline "~/Dropbox/Org/journal.org" "Clipboard")
         "* %^{Head Line} %U %^g\n%c\n%?" :prepend t)
        ;; things to blog about
        ("j" "Journal" entry
         (file+headline "~/Dropbox/Org/journal.org" "Journal")
         "\n %^{topic} %T \n%i%?\n" :prepend t)
        ))

(setq org-directory "~/Dropbox/Org/")
(setq org-default-notes-file "~/.notes")

(provide 'org-customize)
