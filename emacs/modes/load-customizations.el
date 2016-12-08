(autoload 'projectile-mode "projectile-mode")
(autoload 'rainbow-delimiters-mode "rainbow-delimiters-mode")
(autoload 'paredit-mode "paredit-mode")

(add-hook 'c-mode-common-hook   'hs-minor-mode)
(add-hook 'cc-mode-common-hook  'hs-minor-mode)
(add-hook 'c++-mode-common      'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
(add-hook 'java-mode-hook       'hs-minor-mode)
(add-hook 'lisp-mode-hook       'hs-minor-mode)
(add-hook 'perl-mode-hook       'hs-minor-mode)
(add-hook 'sh-mode-hook         'hs-minor-mode)
(add-hook 'ruby-mode-hook       'hs-minor-mode)
(add-hook 'php-mode-hook        'hs-minor-mode)
(add-hook 'go-mode-hook         'hs-minor-mode)

(require 'browser-customize)
(require 'blog-customize)
(require 'clojure-customize)
(require 'coffee-customize)
(require 'company-customize)
(require 'css-customize)
(require 'dired-customize)
(require 'ediff-customize)
(require 'email-customize)
(require 'emms-customize)
(require 'flycheck-customize)
(require 'flyspell-customize)
(require 'git-customize)
(require 'haml-customize)
(require 'helm-customize)
(require 'hideshow-customize)
(require 'ido-customize)
(require 'jabber-customize)
(require 'javascript-customize)
(require 'lisp-customize)
(require 'magit-customize)
(require 'misc-setup)
(require 'org-customize)
(require 'org-remember-customize)
(require 'paredit-customize)
(require 'projectile-customize)
(require 'processing-customize)
(require 'ruby-customize)
(require 'smartparen-customize)
(require 'tramp-customize)
(require 'tumblr-customize)
(require 'twitter-customize)
(require 'uniquify-setup)
(require 'yasnippet-setup)
(require 'text-customize)
(require 'go-customize)
(require 'sql-customize)
(require 'elfeed-customize)
(require 'slack-customize)
(require 'scratch-customize)
(require 'irc-customize)
(require 'compiler-customize)
(require 'epg-customize)
(require 'html-customize)

(provide 'load-customizations)
