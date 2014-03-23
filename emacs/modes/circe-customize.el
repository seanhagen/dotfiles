(require 'circe)

(defun my-znc-password (server)
  "get the password for the znc server"
  (format "seanhagen:%s" circe-znc-password))

(setq circe-network-options
      `(("ZNC"
         :host "198.61.175.31"
         :nick "seanhagen"
         :port "9000"
         :pass my-znc-password
         :tls 't
         :channels ("#vanruby" "#logstash" "#reddit-sysadmin" "#mysql" "#html5" "#httpd" "#webrtc" "#yeoman" "##javascript" "#ruby-lang" "#node-js"))
        ("OFTC"
         :host "irc.oftc.net"
         :nick "seanhagen"
         :channels ("#vhs"))))

(setq circe-reduce-lurker-spam t)
;(circe-set-display-handler "JOIN" (lambda (&rest ignored) nil))

(eval-after-load 'circe '(require 'circe-chanop))

(setq
 lui-time-stamp-position 'left-margin
 lui-fill-type nil
 lui-time-stamp-format "%H:%M")

(add-hook 'circe-channel-mode-hook 'my-lui-setup)
(add-hook 'lui-mode-hook 'my-lui-setup)
(defun my-lui-setup ()
  (interactive)
  (setq
   fringes-outside-margins t
   right-margin-width 0
   left-margin-width 5
   word-wrap t
   wrap-prefix "    "))

(add-hook 'circe-chat-mode-hook 'my-circe-prompt)
(defun my-circe-prompt ()
  (interactive)
  (lui-set-prompt
   (concat (propertize (concat (buffer-name) ">")
                       'face 'circe-prompt-face)
           " ")))

(defun c-oftc ()
  "More IRC Connections"
  (interactive)
  (circe "OFTC"))

(defun c-irc ()
  "Connect to IRC bitches"
  (interactive)
  (circe "ZNC"))

(provide 'circe-customize)
