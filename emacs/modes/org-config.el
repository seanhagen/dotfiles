;;; org-config.el --- Summary
;;; Commentary:
;;; Code:

(use-package org
  :bind (
         ("C-c a t" . org-todo-list)
         ("C-c a l" . org-store-link)
         ("C-c a a" . org-agenda)
         ("C-c a b" . org-iswitchb)
         ("C-c a r" . org-capture)
         :mode org-mode
         ("M-n" . org-do-demote)
         ("M-p" . org-do-promote))

  :config
  (org-clock-persistence-insinuate)
  (setq org-agenda-include-diary t
        org-agenda-include-all-todo t
        org-clock-persist 'history
        org-fontify-done-headline t
        org-hierarchical-checkbox-statistics nil
        org-todo-keywords '((sequence "TODO(t)" "STARTED(s)" "|" "DONE(d!)")
                            (sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f)")
                            (sequence "|" "CANCELED(c@)"))
        org-todo-keyword-faces '(("TODO" . org-warning) ("STARTED" . "yellow")
                                 ("DONE" . (:foreground "green" :strike-through t))
                                 ("CANCELED" . (:foreground "blue" :weight bold)))

        org-capture-templates '(
                                ;; code stuff ( resources, gists, etc )
                                ("C" "Code" entry
                                 (file+headline "~/Dropbox/Org/code.org" "Code")
                                 "* %^{Brief Description} \n%x\n%?" :prepend t)
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
                                )
        org-directory "~/Dropbox/Org/"
        org-default-notes-file "~/.notes"

        )
  )

(use-package org-present
  :config
  (add-hook 'org-present-mode-hook
            (lambda ()
              (org-present-big)
              (org-display-inline-images)))

  (add-hook 'org-present-mode-quit-hook
            (lambda ()
              (org-present-small)
              (org-remove-inline-images))))

(use-package org-bullets
  :after org)

(defun myorg-update-parent-cookie ()
  (when (equal major-mode 'org-mode)
    (save-excursion
      (ignore-errors
        (org-back-to-heading)
        (org-update-parent-todo-statistics)))))

(defadvice org-kill-line (after fix-cookies activate)
  (myorg-update-parent-cookie))

(defadvice kill-whole-line (after fix-cookies activate)
  (myorg-update-parent-cookie))