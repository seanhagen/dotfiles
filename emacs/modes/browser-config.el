;;; browser-config.el --- Summary
;;; Commentary:
;;; Code:
(setq browse-url-generic-program "/usr/bin/sensible-browser"
      browse-url-browser-function 'browse-url-generic
      w3m-default-display-inline-images t)

(defvar gcs-shr-width 110)

(defadvice shr-insert-document (around force-shr-width activate)
  (let ((shr-width (min (1- (window-width)) gcs-shr-width)))
    ad-do-it))

(use-package eww
  :commands eww
  :bind (:map eww-mode-map
              ("+" . eww-increase-width)
              ("-" . eww-decrease-width)))

(defun eww-increase-width ()
  (interactive)
  (make-local-variable 'gcs-shr-width)
  (setq gcs-shr-width  (+ 10 gcs-shr-width))
  (eww-reload))

(defun eww-decrease-width ()
  (interactive)
  (make-local-variable 'gcs-shr-width)
  (setq gcs-shr-width  (- gcs-shr-width 10))
  (eww-reload))

;; w3
