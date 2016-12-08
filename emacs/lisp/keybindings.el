;; set all of our awesome keybidings
(global-set-key (kbd "C-c n") 'cleanup-buffer)
(global-set-key (kbd "<C-return>") 'open-line-below)
(global-set-key (kbd "<C-S-return>") 'open-line-above)

;; hide-show mode!
(global-set-key (kbd "C-+") 'hs-show-block)
(global-set-key (kbd "C-\\") 'hs-hide-block)

(global-set-key (kbd "C-c C-r r") 'inf-ruby)

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

;; (global-set-key "\C-ct" 'google-translate-at-point)
;; (global-set-key "\C-cT" 'google-translate-query-translate)

(global-set-key [(control f3)] 'highlight-symbol-at-point)
(global-set-key [f3] 'highlight-symbol-next)
(global-set-key [(shift f3)] 'highlight-symbol-prev)
(global-set-key [(meta f3)] 'highlight-symbol-query-replace)

(global-set-key (kbd "C-c h n") 'highlight-symbol-next)
(global-set-key (kbd "C-c h p") 'highlight-symbol-prev)
(global-set-key (kbd "C-c h q") 'highlight-symbol-query-replace)

(define-key (current-global-map) "\C-c!" 'shell-here)

(global-set-key (kbd "C-c /") 'hide-lines)

(global-set-key (kbd "M-n") 'org-do-demote)
(global-set-key (kbd "M-p") 'org-do-promote)
(global-set-key (kbd "C-c a t") 'org-todo-list)

(global-set-key (kbd "C-c o l") 'org-store-link)
(global-set-key (kbd "C-c o a") 'org-agenda)
(global-set-key (kbd "C-c o b") 'org-iswitchb)
(global-set-key (kbd "C-c o r") 'org-capture)

(global-set-key (kbd "C-=") 'er/expand-region)

(global-set-key (kbd "C-x C-r") 'rename-file-and-buffer)
(global-set-key (kbd "C-x C-k") 'delete-current-buffer-file)

(global-set-key (kbd "C-s-c C-s-c") 'mc/edit-lines)
(global-set-key (kbd "C-s-c C-e") 'mc/edit-ends-of-lines)
(global-set-key (kbd "C-s-c C-a") 'mc/edit-beginnings-of-lines)

(global-set-key (kbd "C-z") 'multi-term)
(global-set-key (kbd "C-x M-z") 'suspend-frame)

(global-set-key (kbd "C-x M-f") 'ido-find-file-other-window)
(global-set-key (kbd "C-c y") 'bury-buffer)
(global-set-key (kbd "C-c r") 'revert-buffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key (kbd "C-x g") 'webjump)
(global-set-key (kbd "C-x M-g") 'browse-url-at-point)

(global-set-key (kbd "C-s-n") (lambda (ignore-errors (next-line 5))))
(global-set-key (kbd "C-s-p") (lambda (ignore-errors (previous-line 5))))
(global-set-key (kbd "C-s-f") (lambda (ignore-errors (forward-char 5))))
(global-set-key (kbd "C-s-b") (lambda (ignore-errors (backward-char 5))))

(global-set-key (kbd "C-c c") 'comment-or-uncomment-region)
(global-set-key (kbd "C-c u") 'uncomment-region)

(global-set-key (kbd "C-x m") 'magit-status)

(global-set-key (kbd "M-m") 'iy-go-to-char)
(global-set-key (kbd "M-a") 'back-to-indentation)

(global-unset-key (kbd "M-o"))
(global-set-key (kbd "M-o") 'ace-window)

(global-set-key (kbd "M-x") 'helm-M-x)

;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-c k") 'helm-make)
(global-set-key (kbd "C-c o") 'helm-flycheck)

(global-set-key (kbd "C-M-SPC") 'ispell-word)

(global-set-key (kbd "C-c C-p s") 'projectile-switch-project)

;; (global-set-key (kbd "C-x 8 t m") (lambda (insert "™")))
;; (global-set-key (kbd "C-x 8 ( c )") (lambda (insert "©")))
;; (global-set-key (kbd "C-x 8 - >") (lambda (insert "→")))
;; (global-set-key (kbd "C-x 8 8") (lambda (insert "∞")))

(global-set-key (kbd "C-c C-k") 'compile)

(provide 'keybindings)
