;; mu4e stuff
(require 'mu4e)
(require 'org-mu4e)

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

(defun mu4e-start (orign &rest args)
  (window-configuration-to-register :mu4e-fullscreen)
  (delete-other-windows))

(defun mu4e-quit-session ()
  (interactive)
  (kill-buffer)
  (jump-to-register :mu4e-fullscreen))

(advice-add 'mu4e :after #'mu4e-start)

(eval-after-load 'mu4e
  '(progn
     (define-key mu4e-main-mode-map (kbd "q") 'mu4e-quit-session)))

;; attachments
(require 'gnus-dired)
;; make the `gnus-dired-mail-buffers' function also work on
;; message-mode derived modes, such as mu4e-compose-mode
(defun gnus-dired-mail-buffers ()
  "Return a list of active message buffers."
  (let (buffers)
    (save-current-buffer
      (dolist (buffer (buffer-list t))
        (set-buffer buffer)
        (when (and (derived-mode-p 'message-mode)
                (null message-sent-message-via))
          (push (buffer-name buffer) buffers))))
    (nreverse buffers)))

(setq gnus-dired-mail-mode 'mu4e-user-agent)
(add-hook 'dired-mode-hook 'turn-on-gnus-dired-mode)

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

(defun my-render-html-message ()
  (let ((dom (libxml-parse-html-region (point-min) (point-max))))
    (erase-buffer)
    (shr-insert-document dom)
    (goto-char (point-min))))
(setq mu4e-html2text-command 'my-render-html-message)

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

(setq mu4e-contexts
      `( ,(make-mu4e-context
           :name "SeanHagen.ca"
           :enter-func (lambda () (mu4e-message "SeanHagen.ca EMail"))
           :match-func (lambda (msg)
                         (when msg (mu4e-message-contact-field-matches msg :to "*@seanhagen.ca")))
           :vars '( ( mail-reply-to     . "sean@seanhagen.ca" )
                    ( user-mail-address . "sean@seanhagen.ca" )
                    ( user-full-name    . "Sean Patrick Hagen")))
         ,(make-mu4e-context
           :name "Gmail"
           :enter-func (lambda () (mu4e-message "Private EMail"))
           ;; no leave-func
           :match-func (lambda (msg)
                         (when msg (mu4e-message-contact-field-matches msg :to "sean.hagen*@gmail.com")))
           :vars '(  ( mail-reply-to          . "sean.hagen@gmail.com" )
                     ( user-mail-address      . "sean.hagen@gmail.com" )
                     ( user-full-name         . "Sean Patrick Hagen" )))
         ,(make-mu4e-context
           :name "Work"
           :enter-func (lambda () (message "Work EMail"))
           :match-func (lambda (msg)
                         (when msg (mu4e-message-contact-field-matches msg :to "sean@spacelist.ca")))
           :vars '(  ( mail-reply-to          . "sean@spacelist.ca" )
                     ( user-mail-address      . "sean@spacelist.ca" )
                     ( user-full-name         . "Sean Patrick Hagen" )))))

(provide 'email-customize)
