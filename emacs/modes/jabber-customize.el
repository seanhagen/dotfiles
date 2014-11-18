(require 'jabber)
(require 'netrc)
(require 'autosmiley)
(add-hook 'jabber-chat-mode-hook 'autosmiley-mode)

(defvar hipchat-number "182296")
(defvar hipchat-nickname "Sean Hagen")

(defun hipchat-join (room)
  (interactive "sRoom name: ")
  (jabber-groupchat-join
   (jabber-read-account)
   (concat hipchat-number "_" room "@conf.hipchat.com")
   hipchat-nickname
   t))

(defun hipchat-mention (nickname)
  (interactive
   (list (jabber-muc-read-nickname jabber-group "Nickname: ")))
  (insert (concat "@\"" nickname "\" ")))

(setq cred (netrc-machine (netrc-parse "~/.authinfo") "jabber" t))
(setq tscred (netrc-machine (netrc-parse "~/.authinfo") "tsjabber" t))
(setq hipcred (netrc-machine (netrc-parse "~/.authinfo") "hipchat" t))

(message (format "%s" tscred))
(setq jabber-account-list
      `((,(netrc-get cred "login")
         (:password . ,(netrc-get cred "password"))
         (:network-server . "talk.google.com")
         (:connection-type . ssl)
         (:port . 5223))
        (,(netrc-get tscred "login")
         (:password . ,(netrc-get tscred "password"))
         (:network-server . "talk.google.com")
         (:connection-type . ssl)
         (:port . 5223))
        (,(netrc-get hipcred "login")
         (:password . ,(netrc-get hipcred "password"))
         (:network-server . "chat.hipchat.com")
         (:connection-type . ssl)
         (:port . 5223))))

(setq
  jabber-history-enabled t
  jabber-use-global-history nil
  jabber-backlog-number 40
  jabber-backlog-days 30)

(setq jabber-alert-presence-message-function (lambda (who oldstatus newstatus statustext) nil))

(setq my-chat-prompt "[%t] %n>\n")
(when (featurep 'jabber)
  (setq
   jabber-chat-foreign-prompt-format my-chat-prompt
   jabber-chat-local-prompt-format my-chat-prompt
   jabber-groupchat-prompt-format my-chat-prompt
   jabber-muc-private-foreign-prompt-format "[%t] %g/%n>\n"))

(add-hook 'jabber-chat-mode-hook 'goto-address)

(setq jabber-chat-header-line-format
      '(" " (:eval (jabber-jid-displayname jabber-chatting-with))
    	" " (:eval (jabber-jid-resource jabber-chatting-with)) "\t";
    	(:eval (let ((buddy (jabber-jid-symbol jabber-chatting-with)))
                 (propertize
                  (or
                   (cdr (assoc (get buddy 'show) jabber-presence-strings))
                   (get buddy 'show))
                  'face
                  (or (cdr (assoc (get buddy 'show) jabber-presence-faces))
                     'jabber-roster-user-online))))
    	"\t" (:eval (get (jabber-jid-symbol jabber-chatting-with) 'status))
    	(:eval (unless (equal "" *jabber-current-show*)
                 (concat "\t You're " *jabber-current-show*
                         " (" *jabber-current-status* ")")))))

(define-key jabber-chat-mode-map (kbd "RET") 'newline)
(define-key jabber-chat-mode-map [C-return] 'jabber-chat-buffer-send)
(define-key jabber-chat-mode-map [escape] 'my-jabber-chat-delete-or-bury)

;; (define-key mode-specific-map "jr"
;;   (lambda () 
;;     (interactive) 
;;     (switch-to-buffer "*-jabber-*")))

;; (define-key mode-specific-map "jc"
;;   '(lambda () 
;;      (interactive) 
;;      (call-interactively 'jabber-connect)))

;; (define-key mode-specific-map "jd"
;;   '(lambda () 
;;      (interactive) 
;;      (call-interactively 'jabber-disconnect)))

;; (define-key mode-specific-map "jj"
;;   '(lambda () 
;;      (interactive) 
;;      (call-interactively 'jabber-chat-with)))

;; (define-key mode-specific-map "ja"
;;   '(lambda () 
;;      (interactive) 
;;      (jabber-send-presence "away" "" 10)))

;; (define-key mode-specific-map "jo"
;;   '(lambda () 
;;      (interactive) 
;;      (jabber-send-presence "" "" 10)))

;; (define-key mode-specific-map "jx"
;;   '(lambda () 
;;      (interactive) 
;;      (jabber-send-presence "xa" "" 10)))
  

(provide 'jabber-customize)
