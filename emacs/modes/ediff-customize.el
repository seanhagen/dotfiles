(autoload 'winner-undo "winner-mode")

(csetq ediff-window-setup-function 'ediff-setup-windows-plain)
(csetq ediff-split-window-function 'split-window-horizontally)

(csetq ediff-diff-options "-w")

(defun sh-ediff-hook ()
  (ediff-setup-keymap)
  (define-key ediff-mode-map "j" 'ediff-next-difference)
  (define-key ediff-mode-map "k" 'ediff-previous-difference))

(add-hook 'ediff-mode-hook 'sh-ediff-hook)
(add-hook 'ediff-after-quit-hook-internal 'winner-undo)

(provide 'ediff-customize)
