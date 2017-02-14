(use-package notmuch
  :bind (:map notmuch-search-mode-map
              ("u" .   (lambda ()
                         "toggle read status for message"
                         (interactive)
                         (if (member "unread" (notmuch-search-get-tags))
                             (notmuch-search-remove-tag "-unread")
                           (notmuch-search-add-tag "+unread"))
                         ;; (if (member "unread" (notmuch-search-get-tags))
                         ;;     (notmuch-show-tag (list "-unread"))
                         ;;   (notmuch-show-tag (list "+unread")))
                         ))
              ("d" . (lambda ()
                       "toggle deleted tag for message"
                       (interactive)
                       (if (member "deleted" (notmuch-search-get-tags))
                           (notmuch-show-tag (list "-deleted"))
                         (notmuch-show-tag (list "+deleted")))))
              ("S" . (lambda ()
                       "mark message as spam"
                       (interactive)
                       (notmuch-show-tag-message "+spam" "-inbox"))))
  :config
  (setq smtpmail-smtp-server localhost
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

;; notmuch-labeler
