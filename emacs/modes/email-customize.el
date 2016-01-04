;; mu4e stuff

(require 'mu4e)

(setq mu4e-view-prefer-html t)

(setq mu4e-html2text-command "html2text -utf8 -width 150")


;; enable inline images
(setq mu4e-view-show-images t)
;; use imagemagick, if available
(when (fboundp 'imagemagick-register-types)
  (imagemagick-register-types))

;; tell message-mode how to send mail
(setq message-send-mail-function 'smtpmail-send-it)
;; if our mail server lives at smtp.example.org; if you have a local
;; mail-server, simply use 'localhost' here.
(setq smtpmail-smtp-server "localhost")

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

;; gnus stuff
(setq gnus-select-method
      '(nntp "localhost")) ; I also read news in gnus; it is copied to my local machine via **leafnode**

(setq gnus-secondary-select-methods
      '((nnmaildir "GMail" (directory "~/Mail/Gmail")) ; grab mail from here
        ))
;; (autoload 'bbdb-initialize "bbdb")

;; (eval-after-load 'gnus
;;   '(progn
;;      (require 'bbdb-ext)
;;      (require 'bbdb-)

;;      (setq bbdb-file "~/Dropbox/bbdb")

;;      (bbdb-initialize)

;;      (setq
;;       wl-default-spec "["
;;       mime-edit-split-message nil
;;       bbdb-pop-up-window-size 10
;;       ;;bbdb-offer-save 1                        ;; 1 means save-without-asking

;;       bbdb-use-pop-up t                        ;; allow popups for addresses
;;       bbdb-electric-p t                        ;; be disposable with SPC
;;       bbdb-popup-target-lines  1               ;; very small

;;       bbdb-dwim-net-address-allow-redundancy t ;; always use full name
;;       bbdb-quiet-about-name-mismatches 2       ;; show name-mismatches 2 secs

;;       bbdb-always-add-address t                ;; add new addresses to existing...
;;       ;; ...contacts automatically
;;       bbdb-canonicalize-redundant-nets-p t     ;; x@foo.bar.cx => x@bar.cx

;;       bbdb-completion-type nil                 ;; complete on anything

;;       bbdb-complete-name-allow-cycling t       ;; cycle through matches
;;       ;; this only works partially
;;       bbbd-message-caching-enabled t           ;; be fast
;;       bbdb-use-alternate-names t               ;; use AKA

;;       bbdb-elided-display t                    ;; single-line addresses

;;       ;; auto-create addresses from mail
;;       bbdb/mail-auto-create-p 'bbdb-ignore-some-messages-hook
;;       bbdb-ignore-some-messages-alist ;; don't ask about fake addresses
;;       ;; NOTE: there can be only one entry per header (such as To, From)
;;       ;; http://flex.ee.uec.ac.jp/texi/bbdb/bbdb_11.html
;;       )))

(provide 'email-customize)
