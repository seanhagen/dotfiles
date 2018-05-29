(use-package notmuch
  :load-path "/usr/share/emacs/site-lisp/elpa-src/notmuch-0.25.1"
  :config
  (setq smtpmail-smtp-server "localhost"
        message-send-mail-funciton 'smtpmail-send-it
        notmuch-crypto-process-mime t
        notmuch-search-oldest-first nil
        message-signature-file "~/.signature.personal"
        mm-text-html-renderer 'w3m
        w3m-default-display-inline-images t
        w3m-display-inline-images t
        shr-inhibit-images nil
        mime-view-text/html-previewer 'shr
        mm-inline-text-html-with-images t)

  ;; (setq mm-sign-option 'guided)
  ;; (setq mml2015-use 'epg
  ;;       mml2015-encrypt-to-self t
  ;;       mml2015-sign-with-sender nil
  ;;       epa-armor t
  ;;       epg-debug t)

  (setq notmuch-saved-searches
        '((:name "inbox" :query "tag:inbox AND tag:unread AND NOT tag:social AND NOT tag:work AND NOT tag:seanhagenca AND NOT tag:newsletter AND NOT tag:wrong")
          (:name "wrong" :query "tag:wrong AND tag:unread")
          (:name "work" :query "tag:work AND tag:unread")
          (:name "seanhagenca" :query "tag:seanhagenca AND tag:unread")
          (:name "freshbooks" :query "tag:freshbooks AND tag:unread")
          (:name "cerberus" :query "tag:cerberus AND tag:unread")
          (:name "newsletters" :query "tag:newsletter AND tag:unread")
          (:name "social" :query "tag:social AND tag:unread")
          (:name "unread" :query "tag:unread")))

  (when (fboundp 'imagemagick-register-types)
    (imagemagick-register-types))
  (add-hook 'notmuch-show-hook 'notmuch-show-prefer-html-over-text)
  (defun notmuch-show-prefer-html-over-text ()
    (interactive)
    (let* ((text-button (save-excursion
                          (goto-char (point-min))
                          (search-forward "[ text/plain ]" (point-max) t)))
           (html-button (save-excursion
                          (goto-char (point-min))
                          (search-forward "[ text/html (hidden) ]" (point-max) t))))
      (when html-button
        (save-excursion
          (goto-char (- html-button 1))
          (notmuch-show-toggle-part-invisibility)))
      (when text-button
        (save-excursion
          (goto-char (- text-button 1))
          (notmuch-show-toggle-part-invisibility))))))

(use-package bbdb)

(use-package gnus-alias
  :commands gnus-alias-determine-identity
  :init
  (add-hook 'message-setup-hook 'gnus-alias-determine-identity)
  :config
  (setq gnus-alias-identity-alist
        '(("Gmail"
           nil ;; doesn't refer to any other identity
           "Sean Patrick Hagen <sean.hagen@gmail.com>"
           nil ;; No organizational header
           nil ;; No extra headers
           nil ;; No extra body text
           "~/.signature"
           )
          ("SHCA"
           nil
           "Sean Patrick Hagen <sean@seanhagen.ca>"
           nil
           nil
           nil
           "~/.signature-shca")
          ("Biba"
           nil
           "Sean Patrick Hagen <sean@playbiba.com>"
           nil
           nil
           nil
           "~/.signature-biba")))

  (setq gnus-alias-default-identity "Gmail")
  (setq gnus-alias-identity-rules
        '(("Spacelist" ("any" "sean@spacelist.ca" both) "Spacelist")))
  )

;; notmuch-labeler

(provide 'email-config)
;;; email-config.el ends here
