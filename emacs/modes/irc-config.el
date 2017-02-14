;; erc
;; erc-colorize
;; erc-crypt
;; erc-image
;; erc-nick-notify
;; erc-tweet
;; erc-twitch
;; erc-youtube
;; erc-yt


;; (require 'erc)
;; (require 'erc-tweet)
;; (require 'erc-youtube)
;; (require 'erc-image)
;; (require 'erc-colorize)

;; (add-to-list 'erc-modules 'image)
;; (add-to-list 'erc-modules 'tweet)
;; (add-to-list 'erc-modules 'youtube)

;; (erc-update-modules)

;; (erc-autojoin-mode t)
;; (setq erc-autojoin-channels-alist
;;       '(
;;         ;; (".*\\.freenode.net" "#emacs" "#go-nuts" "#ruby" "#bash" "#clojure")
;;         )
;;       )

;; (define-prefix-command 'irc-global-map)
;; (define-key 'irc-global-map
;;   (kbd "j")
;;   (defhydra hydra-switch-to-irc-buffer (:color blue)
;;     "Jump to IRC Channel"
;;     ("e" (switch-to-buffer "#emacs") "#emacs")
;;     ("g" (switch-to-buffer "#go-nuts") "#go-nuts")
;;     ("r" (switch-to-buffer "#ruby") "#ruby")
;;     ("b" (switch-to-buffer "#bash") "#bash")
;;     ("c" (switch-to-buffer "#clojure") "#clojure")
;;     ))


;; ;; check channels
;; (erc-track-mode t)
;; (setq erc-track-exclude-types '("JOIN" "NICK" "PART" "QUIT" "MODE"
;;                                 "324" "329" "332" "333" "353" "477"))
;; ;; don't show any of this
;; (setq erc-hide-list '("JOIN" "PART" "QUIT" "NICK"))

;; ;; (eval-after-load "erc" '(define-key erc-mode-map (kbd "C-c C-b") nil))

;; (setq erc-nick "seanphagen")

;; (add-hook 'erc-mode-hook
;;           (lambda ()
;;             ;; (erc-twitch-enable)
;;             (local-set-key (kbd "C-c e") 'irc-global-map)
;;             ))
