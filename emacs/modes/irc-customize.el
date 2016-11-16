;;; package -- Summary
;;; Commentary:
;;; My setup for IRC.
;;; Code:

(require 'erc)
(require 'erc-tweet)
(require 'erc-youtube)

(erc-autojoin-mode t)
(setq erc-autojoin-channels-alist
      '(
        (".*\\.freenode.net" "#emacs" "#golang")
        )
      )

;; check channels
(erc-track-mode t)
(setq erc-track-exclude-types '("JOIN" "NICK" "PART" "QUIT" "MODE"
                                "324" "329" "332" "333" "353" "477"))
;; don't show any of this
(setq erc-hide-list '("JOIN" "PART" "QUIT" "NICK"))

(provide 'irc-customize)
;;; irc-customize.el ends here
