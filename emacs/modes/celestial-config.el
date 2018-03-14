;;; celestial-config.el --- Summary
;;; Commentary:
;;; Code:

(use-package celestial-mode-line
  :ensure t
  :config
  (setq calendar-longitude -122.984
        calendar-latitude 49.280
        calendar-location-name "Burnaby, BC"
        global-mode-string '(""))
  (add-to-list 'global-mode-string 'celestial-mode-line-string t)
  (celestial-mode-line-start-timer))

(provide 'celestial-config)
;;; celestial-config.el ends here
