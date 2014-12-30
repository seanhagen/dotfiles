;; (require 'org-remember)

;; (org-remember-insinuate)

;; (setq org-directory "~/Documents/Org/")
;; (setq org-default-notes-file "~/.notes")
;; (setq remember-annotation-functions '(org-remember-annotation))
;; (setq remember-handler-functions '(org-remember-handler))
;; (add-hook 'remember-mode-hook 'org-remember-apply-template)

;; (setq org-remember-templates
;;     '(("Todo" ?t "* TODO %^{Brief Description} %^g\n%?\nAdded: %U" "~/Documents/GTD/newgtd.org" "Tasks")
;;       ("Journal"   ?j "** %^{Head Line} %U %^g\n%i%?"  "~/Documents/GTD/journal.org")
;;       ("Clipboard" ?c "** %^{Head Line} %U %^g\n%c\n%?"  "~/Documents/GTD/journal.org")
;;       ("Receipt"   ?r "** %^{BriefDesc} %U %^g\n%?"   "~/Documents/GTD/finances.org")
;;       ("Book" ?b "** %^{Book Title} %t :BOOK: \n%[~/.book_template.txt]\n" 
;;          "~/Documents/GTD/journal.org")
;;       ("Film" ?f "** %^{Film Title} %t :FILM: \n%[~/.film_template.txt]\n" 
;;          "~/Documents/GTD/journal.org")
;;       ("Someday"   ?s "** %^{Someday Heading} %U\n%?\n"  "~/Documents/GTD/someday.org")
;;       ("Vocab"   ?v "** %^{Word?}\n%?\n"  "~/Documents/GTD/vocab.org")
;;      )
;;    )

(provide 'org-remember-customize)
