;; Magit setup!
(autoload 'magit "magit" "Magit Git" t)
(autoload 'magit-status "magit" "Magit Git" t)

(setq magit-last-seen-setup-instructions "1.4.0")
(setq vc-handled-backends nil)
(setq magit-auto-revert-mode 1)

(defadvice magit-status
  (around magit-fullscreen activate)
  (window-configuration-to-register :magit-fullscreen)
  ad-do-it
  (delete-other-windows))

(defun magit-quit-session ()
  "Restores the previous window configuration and kills the magit buffer"
  (interactive)
  (kill-buffer)
  (jump-to-register :magit-fullscreen))

(eval-after-load 'magit
  '(progn
     (define-key magit-status-mode-map (kbd "q") 'magit-quit-session)
     (add-hook 'git-commit-mode-hook 'turn-on-flyspell)
     (set-face-background 'diff-file-header "#121212")
     (set-face-foreground 'diff-context "#666666")
     (set-face-foreground 'diff-added "#00cc33")
     (set-face-foreground 'diff-removed "#ff0000")

     (set-default 'magit-stage-all-confirm nil)
     (set-default 'magit-unstage-all-confirm nil)))

(setq vc-handled-backends nil)

(eval-after-load 'ediff
  '(progn
     (set-face-foreground 'ediff-odd-diff-B "#ffffff")
     (set-face-background 'ediff-odd-diff-B "#292521")
     (set-face-foreground 'ediff-even-diff-B "#ffffff")
     (set-face-background 'ediff-even-diff-B "#292527")

     (set-face-foreground 'ediff-odd-diff-A "#ffffff")
     (set-face-background 'ediff-odd-diff-A "#292521")
     (set-face-foreground 'ediff-even-diff-A "#ffffff")
     (set-face-background 'ediff-even-diff-A "#292527")))

(provide 'magit-customize)
