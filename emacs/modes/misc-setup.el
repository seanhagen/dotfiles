(require 'iy-go-to-char)

(autoload 'er/expand-region "expand-region" "Expand Region" t)

(global-set-key (kbd "M-m") 'iy-go-to-char)
(global-set-key (kbd "M-a") 'back-to-indentation)

(global-set-key (kbd "M-p") 'ace-window)

(provide 'misc-setup)
