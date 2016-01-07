;; (require 'jabber-autoloads)
;; (require 'netrc)

;; (setq cred (netrc-machine (netrc-parse "~/.authinfo") "jabber" t))
;; (setq cred (netrc-machine (netrc-parse "~/.authinfo") "bjabber" t))

;; (setq jabber-account-list
;;       `(("sean.hagen@gmail.com"
;;          (:password . "iwriofgxharsgkub")
;;          (:network-server . "talk.google.com")
;;          (:connection-type . ssl))))

;; (setq
;;  jabber-history-enabled t
;;  jabber-use-global-history nil
;;  jabber-backlog-number 40
;;  jabber-backlog-days 30)

;;(setq jabber-alert-presence-message-function (lambda (who oldstatus newstatus statustext) nil))

;; (setq my-chat-prompt "[%t] %n>\n")
;; (when (featurep 'jabber)
;;   (setq
;;    jabber-chat-foreign-prompt-format my-chat-prompt
;;    jabber-chat-local-prompt-format my-chat-prompt
;;    jabber-groupchat-prompt-format my-chat-prompt
;;    jabber-muc-private-foreign-prompt-format "[%t] %g/%n>\n"))

;; (add-hook 'jabber-chat-mode-hook 'goto-address)

;; (setq jabber-chat-header-line-format
;;       '(" " (:eval (jabber-jid-displayname jabber-chatting-with))
;;     	" " (:eval (jabber-jid-resource jabber-chatting-with)) "\t";
;;     	(:eval (let ((buddy (jabber-jid-symbol jabber-chatting-with)))
;;                  (propertize
;;                   (or
;;                    (cdr (assoc (get buddy 'show) jabber-presence-strings))
;;                    (get buddy 'show))
;;                   'face
;;                   (or (cdr (assoc (get buddy 'show) jabber-presence-faces))
;;                      'jabber-roster-user-online))))
;;     	"\t" (:eval (get (jabber-jid-symbol jabber-chatting-with) 'status))
;;     	(:eval (unless (equal "" *jabber-current-show*)
;;                  (concat "\t You're " *jabber-current-show*
;;                          " (" *jabber-current-status* ")")))))

;; (define-key jabber-chat-mode-map (kbd "RET") 'newline)
;; (define-key jabber-chat-mode-map [C-return] 'jabber-chat-buffer-send)
;; (define-key jabber-chat-mode-map [escape] 'my-jabber-chat-delete-or-bury)

(provide 'jabber-customize)
