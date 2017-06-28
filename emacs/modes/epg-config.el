;;; epg-config.el --- Summary
;;; Commentary:
;;; Code:
(use-package epa
  :config
  (epa-file-enable)
  (setq epg-debug t
        epa-armor t))

(use-package epa-file
  :after epa)
