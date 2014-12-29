;; Magit setup!
(autoload 'magit "magit" "Magit Git" t)

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
     (add-hook 'git-commit-mode-hook 'turn-on-flyspell)))

(setq vc-handled-backends nil)

(provide 'magit-customize)
