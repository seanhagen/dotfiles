(require 'iy-go-to-char)

(autoload 'er/expand-region "expand-region" "Expand Region" t)

(rainbow-mode 1)

;(beacon-mode 1)

; https://github.com/Malabarba/aggressive-indent-mode
(global-aggressive-indent-mode 1)
(add-to-list 'aggressive-indent-excluded-modes 'html-mode)

(require 'highlight-symbol)
(global-set-key [(control f3)] 'highlight-symbol)
(global-set-key [f3] 'highlight-symbol-next)
(global-set-key [(shift f3)] 'highlight-symbol-prev)
(global-set-key [(meta f3)] 'highlight-symbol-query-replace)

(provide 'misc-setup)
