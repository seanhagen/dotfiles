;; mu4e stuff
(require 'mu4e)

;; tell message-mode how to send mail
(setq message-send-mail-function 'smtpmail-send-it)
;; if our mail server lives at smtp.example.org; if you have a local
;; mail-server, simply use 'localhost' here.
(setq smtpmail-smtp-server "localhost")

(setq mu4e-view-prefer-html t)
(setq mu4e-view-show-images t)
(setq mu4e-view-show-addresses t)
(setq mu4e-headers-skip-duplicates t)
(setq mu4e-use-fancy-chars nil)

(add-to-list 'mu4e-view-actions
             '("in browser" . mu4e-action-view-in-browser) t)


(add-hook 'mu4e-compose-mode-hook 'flyspell-mode)
;; gpg
(add-hook 'mu4e-compose-mode-hook 'epa-mail-mode)
(add-hook 'mu4e-view-mode-hook 'epa-mail-mode)

;; set this to nil so signature is not included by default
;; you can include in message with C-c C-w
(setq mu4e-compose-signature-auto-include t)
(setq mu4e-compose-signature (with-temp-buffer
                               (insert-file-contents "~/.signature.personal")
                               (buffer-string)))
;; maybe use this instead for signature by creating multiple functions
;; so that each account can have it's own sig (or even just multiple sigs
;; for different occasions )
;; (defun cpb-mu4e-personal()
;;   (interactive)
;;   (message "personal mail account")
;;   (setq user-mail-address "info@charlbotha.com"
;;         mu4e-compose-signature (get-string-from-file "~/.signature.personal")))

;; message-signature-file NOT used by mu4e
(setq message-signature-file "~/.signature.personal")

;; use imagemagick, if available
(when (fboundp 'imagemagick-register-types)
  (imagemagick-register-types))

;; >
;; (setq mu4e-html2text-command "html2text -utf8 -width 150")
;; <

;; >
;; (setq mu4e-html2text-command "w3m -T text/html")
;; <

;; >
;; (require 'mu4e-contrib)
;; (setq mu4e-html2text-command 'mu4e-shr2text)
;; <

;; >
(defun my-render-html-message ()
  (let ((dom (libxml-parse-html-region (point-min) (point-max))))
    (erase-buffer)
    (shr-insert-document dom)
    (goto-char (point-min))))
(setq mu4e-html2text-command 'my-render-html-message)
;; <

(defvar mu4e-bookmarks
  '(("date:1d..now flag:unread AND NOT flag:trashed" "Unread from last 24h messages"      ?r)
    ("flag:unread AND NOT flag:trashed" "Unread messages"      ?u)
    ("date:today..now"                  "Today's messages"     ?t)
    ("date:7d..now"                     "Last 7 days"          ?w)
    ("mime:image/*"                     "Messages with images" ?p))
  "A list of pre-defined queries; these show up in the main
screen. Each of the list elements is a three-element list of the
form (QUERY DESCRIPTION KEY), where QUERY is a string with a mu
query, DESCRIPTION is a short description of the query (this
shows up in the UI), and KEY is a shortcut key for the query.")

(provide 'email-customize)
