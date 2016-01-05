(require 'company)

;;(add-hook 'after-init-hook 'global-company-mode)

(company-quickhelp-mode 1)

(setq company-idle-delay 0.3)
(setq company-tooltip-limit 20)
(setq company-minimum-prefix-length 2)
(setq company-echo-delay 0)
(setq company-begin-commands '(self-insert-command))
;; invert the navigation direction if the the completion popup-isearch-match
;; is displayed on top (happens near the bottom of windows)
(setq company-tooltip-flip-when-above t)

(global-company-mode 1)

(provide 'company-customize)
