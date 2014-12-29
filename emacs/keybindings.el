;; set all of our awesome keybidings
(global-set-key (kbd "C-c n") 'cleanup-buffer)
(global-set-key (kbd "<C-return>") 'open-line-below)
(global-set-key (kbd "<C-S-return>") 'open-line-above)

;; hide-show mode!
(global-set-key (kbd "C-+") 'hs-show-block)
(global-set-key (kbd "C-\\") 'hs-hide-block)

(global-set-key (kbd "C-c r r") 'inf-ruby)

(add-hook 'term-mode-hook 
          (lambda()
            (add-to-list 'term-unbind-key-list "C-p")
            (add-to-list 'term-unbind-key-list "C-n")))

(global-set-key (kbd "C-x C-g") 'git-gutter:toggle)
(global-set-key (kbd "C-x C-y") 'git-gutter:clear)

(global-set-key (kbd "C-c <right>") 'emms-next)
(global-set-key (kbd "C-c <left>") 'emms-previous)
(global-set-key (kbd "C-c C-c <right>") 'emms-seek-forward)
(global-set-key (kbd "C-c C-c <left>") 'emms-seek-backward)
(global-set-key (kbd "C-c <up>") 'emms-start)
(global-set-key (kbd "C-c <down>") 'emms-stop)
(global-set-key (kbd "C-c C-c <up>") 'emms-shuffle)
(global-set-key (kbd "C-c C-c <down>") 'emms-random)
(global-set-key (kbd "C-c p") 'emms-pause)
(global-set-key (kbd "<f2>") 'emms-smart-browse)
(global-set-key (kbd "C-c +") 'emms-volume-raise)
(global-set-key (kbd "C-c -") 'emms-volume-lower)

;; using keyboard keys!
(global-set-key (kbd "<XF86AudioPlay>") 'my-emms-play-pause)
(global-set-key (kbd "<XF86AudioNext>") 'emms-next)
(global-set-key (kbd "<XF86AudioPrev>") 'emms-previous)

(global-set-key (kbd "<f7>")      'fold-dwim-toggle)
(global-set-key (kbd "<M-f7>")    'fold-dwim-hide-all)
(global-set-key (kbd "<S-M-f7>")  'fold-dwim-show-all)
(global-set-key (kbd "C-c C-f") 'fold-this-all)
(global-set-key (kbd "C-c C-F") 'fold-this)
(global-set-key (kbd "C-c M-f") 'fold-this-unfold-all)

(global-set-key "\C-ct" 'google-translate-at-point)
(global-set-key "\C-cT" 'google-translate-query-translate)

(global-set-key [(control f3)] 'highlight-symbol-at-point)
(global-set-key [f3] 'highlight-symbol-next)
(global-set-key [(shift f3)] 'highlight-symbol-prev)
(global-set-key [(meta f3)] 'highlight-symbol-query-replace)

(define-key (current-global-map) "\C-c!" 'shell-here)

;; (global-set-key "\C-cec" 'evernote-create-note)
;; (global-set-key "\C-ceo" 'evernote-open-note)
;; (global-set-key "\C-ces" 'evernote-search-notes)
;; (global-set-key "\C-ceS" 'evernote-do-saved-search)
;; (global-set-key "\C-cew" 'evernote-write-note)
;; (global-set-key "\C-cep" 'evernote-post-region)
;; (global-set-key "\C-ceb" 'evernote-browser)

(global-set-key (kbd "C-c /") 'hide-lines)

(global-set-key (kbd "M-n") 'org-do-demote)
(global-set-key (kbd "M-p") 'org-do-promote)

(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c b") 'org-iswitchb)
(global-set-key (kbd "C-c r") 'org-capture)


(provide 'keybindings)

