;;; social-config.el -- Summary
;;; Commentary:
;;; Code:

;; tumble
(use-package tumblesocks
  :commands tumblesocks-view-dashboard
  :config
  (setq tumblesocks-blog "seanhagen.tumblr.com"))

(use-package twittering-mode
  :commands twit
  :bind (:map twittering-mode-hook
              ("C-c c r" . twittering-reply-to-user))
  :config
  (setq twittering-use-master-password t
        twittering-icon-mode t))

(use-package mastodon
  :config
  (setq mastodon-instance-url "https://mastodon.social"))

;;; social-config.el ends here
