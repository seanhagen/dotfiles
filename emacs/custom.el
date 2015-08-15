(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-etags-requires 1)
 '(ac-menu-height 20)
 '(canlock-password "38f7ec4ad5e7b3b1c3196ee48f674d1f73ae100d")
 '(cider-lein-command "lein")
 '(cider-repl-display-in-current-window nil)
 '(coffee-command "/usr/local/node/bin/coffee")
 '(custom-safe-themes
   (quote
    ("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "756597b162f1be60a12dbd52bab71d40d6a2845a3e3c2584c6573ee9c332a66e" default)))
 '(dired-details-hidden-string "[...] ")
 '(dired-details-hide-link-targets nil)
 '(display-time-day-and-date t)
 '(enh-ruby-bounce-deep-indent nil)
 '(enh-ruby-check-syntax (quote errors))
 '(enh-ruby-deep-indent-paren nil)
 '(enh-ruby-deep-indent-paren-style nil)
 '(enh-ruby-hanging-brace-indent-level 2)
 '(exec-path
   (quote
    ("/home/sean/bin" "/usr/lib/lightdm/lightdm" "/usr/local/sbin" "/usr/local/bin" "/usr/sbin" "/usr/bin" "/sbin" "/bin" "/usr/games" "/usr/local/libexec/emacs/24.3/x86_64-unknown-linux-gnu" "/usr/local/node/bin")))
 '(flycheck-display-errors-function (function flycheck-pos-tip-error-messages))
 '(flycheck-ruby-rubocop-executable "~/.rbenv/shims/rubocop")
 '(flymake-allowed-file-name-masks
   (quote
    (("\\.el$" erefactor-flymake-init erefactor-flymake-cleanup erefactor-flymake-get-real-file-name)
     ("\\.jade\\'" flymake-jade-init)
     (".+\\.js$" flymake-jshint-init flymake-simple-cleanup flymake-get-real-file-name)
     (".+\\.scss$" flymake-scss-init)
     ("\\.php[345s]?$" flymake-phpcs-init flymake-simple-cleanup flymake-get-real-file-name my-flymake-php-init)
     ("\\.l?hs\\'" haskell-flymake-init)
     (".+\\.css$" flymake-csslint-init flymake-simple-cleanup flymake-get-real-file-name)
     ("\\.\\(?:c\\(?:pp\\|xx\\|\\+\\+\\)?\\|CC\\)\\'" flymake-simple-make-init)
     ("\\.xml\\'" flymake-xml-init)
     ("\\.html?\\'" flymake-xml-init)
     ("\\.cs\\'" flymake-simple-make-init)
     ("\\.p[ml]\\'" flymake-perl-init)
     ("\\.php[345]?\\'" flymake-php-init)
     ("\\.js\\'" flymake-javascript-init)
     ("\\.css\\'" flymake-css-init)
     ("\\.h\\'" flymake-master-make-header-init flymake-master-cleanup)
     ("\\.java\\'" flymake-simple-make-java-init flymake-simple-java-cleanup)
     ("[0-9]+\\.tex\\'" flymake-master-tex-init flymake-master-cleanup)
     ("\\.tex\\'" flymake-simple-tex-init)
     ("\\.idl\\'" flymake-simple-make-init)
     ("\\.spec\\'" flymake-specfile-init)
     ("\\.po\\'" flymake-pofile-init))))
 '(flymake-no-changes-timeout 2)
 '(flymake-number-of-errors-to-display 5)
 '(flymake-run-in-place t)
 '(geben-display-window-function (quote switch-to-buffer))
 '(geben-show-breakpoints-debugging-only nil)
 '(geben-temporary-file-directory "/home/sean/.geben")
 '(gnus-use-full-window nil)
 '(godef-command "/home/sean/Code/Go/bin/godef")
 '(grep-highlight-matches (quote auto))
 '(image-animate-loop t)
 '(image-dired-append-when-browsing t)
 '(image-dired-cmd-pngcrush-program "pngcrush")
 '(image-dired-cmd-pngnq-program "pngnq")
 '(image-dired-dir "/tmp/emacs-image-dired/")
 '(image-dired-external-viewer nil)
 '(image-diredx-async-mode t)
 '(indent-tabs-mode nil)
 '(inf-mongo-command "/usr/bin/mongo 127.0.0.1:27017")
 '(ispell-highlight-face (quote flyspell-incorrect))
 '(jabber-roster-line-format " %c %-25n %u %-8s  %S (%r)")
 '(jabber-show-offline-contacts nil)
 '(js2-basic-offset 2)
 '(lui-fill-column 140)
 '(magit-push-always-verify nil)
 '(mu4e-maildir "/home/sean/Mail")
 '(mu4e-mu-binary "/home/sean/.emacs.d/el-get/mu4e/mu/mu")
 '(multi-term-dedicated-select-after-open-p t)
 '(multi-term-program nil)
 '(nxml-child-indent nil)
 '(octomacs-workdir-alist (quote (("Blog" . "/home/sean/Code/Ruby/octopress"))))
 '(offlineimap-command "offlineimap -o -u basic")
 '(org-agenda-files
   (quote
    ("~/Dropbox/Org/trip_planning.org" "~/Dropbox/Org/trello.org" "~/Dropbox/Org/organizer.org" "~/Dropbox/Org/mygtd.org" "~/Dropbox/Org/journal.org" "~/Dropbox/Org/index.org" "~/Dropbox/Org/finances.org" "~/Dropbox/Org/code.org" "~/Dropbox/Org/agenda.org")))
 '(org-agenda-restore-windows-after-quit t)
 '(org-agenda-show-all-dates nil)
 '(org-agenda-sticky t)
 '(org-archive-location "~/Dropbox/Org/archive.org::* From %s")
 '(org-fontify-done-headline t)
 '(org-journal-dir "~/Dropbox/Org/journal")
 '(org-log-done (quote note))
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-docview org-info org-irc org-mhe org-w3m)))
 '(paradox-automatically-star t)
 '(php+-mode-delete-trailing-whitespace t)
 '(php+-mode-protected-underscore t)
 '(php+-mode-show-project-in-modeline t)
 '(php+-mode-show-trailing-whitespace t)
 '(php-basic-offset 2)
 '(php-doc-default-author (quote ("Sean Hagen" . "sphagen@broadbandtvcorp.com")))
 '(php-file-patterns (quote ("\\.inc\\'")))
 '(php-mode-force-pear nil)
 '(php-repl-program "/home/sean/bin/boris/bin/boris")
 '(phpcmp-lighter " PHPC")
 '(phpcs-standard "MySource")
 '(phpunit-shell-command "vendor/bin/phpunit")
 '(ruby-block-highlight-toggle t)
 '(scss-compile-at-save nil)
 '(scss-sass-command "/home/sean/.rbenv/shims/sass")
 '(scss-sass-options nil)
 '(send-mail-function (quote sendmail-send-it))
 '(term-unbind-key-list (quote ("C-z" "C-x" "C-c" "C-h" "C-y" "<ESC>" "C-p" "C-n")))
 '(tidy-temp-directory "/tmp")
 '(tumblesocks-blog "seanhagen.tumblr.com" t)
 '(user-mail-address "sean.hagen@gmail.com")
 '(wl-draft-always-delete-myself t)
 '(wl-summary-incorporate-marks (quote ("N" "U" "!" "A" "A" "F" "$" "S")))
 '(yagist-github-user "seanhagen")
 '(yagist-view-gist t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(circe-highlight-nick-face ((t (:foreground "orange red" :weight bold))))
 '(ediff-even-diff-A ((t (:background "cyan" :foreground "Black"))) t)
 '(ediff-even-diff-Ancestor ((t (:background "black" :foreground "White"))) t)
 '(ediff-even-diff-B ((t (:background "green" :foreground "black"))) t)
 '(ediff-even-diff-C ((t (:background "yellow" :foreground "Black"))) t)
 '(ediff-odd-diff-A ((t (:background "white" :foreground "medium blue"))) t)
 '(ediff-odd-diff-C ((t (:background "turquoise" :foreground "dark green"))) t)
 '(eshell-ls-directory ((t (:foreground "deep sky blue" :weight bold))) t)
 '(eshell-ls-executable ((t (:foreground "lime green" :weight normal))) t)
 '(flycheck-error ((t (:underline "Red1"))))
 '(flycheck-info ((t (:underline "ForestGreen"))))
 '(flycheck-warning ((t (:underline "DarkOrange"))))
 '(flymake-errline ((t (:background "orange" :foreground "red"))))
 '(highlight ((t (:background "yellow" :foreground "black"))))
 '(org-done ((t (:weight normal :strike-through t))))
 '(org-habit-alert-face ((t (:background "gold" :foreground "black"))) t)
 '(org-headline-done ((((class color) (min-colors 16) (background dark)) (:strike-through t))))
 '(show-paren-match ((t (:background "medium blue"))))
 '(sp-pair-overlay-face ((t (:underline "deep sky blue"))))
 '(trailing-whitespace ((t (:background "black" :foreground "orange red" :underline t)))))
