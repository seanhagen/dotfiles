;;; epg-config.el --- Summary
;;; Commentary:
;;; Code:
(use-package epa
  :config
  (epa-file-enable))

(use-package epa-file
  :after epa)
