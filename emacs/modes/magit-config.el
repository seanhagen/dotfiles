;;; magit-config.el --- Summary
;;; Commentary:
;;; Code:

(use-package magit
  :defer t
  :no-require t
  :commands magit-status
  :bind (("C-x m" . magit-status)
         :map magit-status-mode-map
         ("q" . magit-quit-session))
  :config
  (setq magit-last-seen-setup-instructions "1.4.0"
        vc-handled-backends nil
        magit-auto-revert-mode 1)
  (add-hook 'git-commit-mode-hook 'turn-on-flyspell)
  (set-face-background 'diff-file-header "#121212")
  (set-face-foreground 'diff-context "#666666")
  (set-face-foreground 'diff-added "#00cc33")
  (set-face-foreground 'diff-removed "#ff0000")
  (set-default 'magit-stage-all-confirm nil)
  (set-default 'magit-unstage-all-confirm nil))

(use-package magit-gh-pulls
  :no-require t
  :config
  (add-hook 'magit-mode-hook 'turn-on-magit-gh-pulls))

(use-package ediff
  :no-require t
  :config
  (set-face-foreground 'ediff-odd-diff-B "#ffffff")
  (set-face-background 'ediff-odd-diff-B "#292521")
  (set-face-foreground 'ediff-even-diff-B "#ffffff")
  (set-face-background 'ediff-even-diff-B "#292527")

  (set-face-foreground 'ediff-odd-diff-A "#ffffff")
  (set-face-background 'ediff-odd-diff-A "#292521")
  (set-face-foreground 'ediff-even-diff-A "#ffffff")
  (set-face-background 'ediff-even-diff-A "#292527"))

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
