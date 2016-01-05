;; (require 'mime-w3m)
;; (autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)

;; (eval-after-load "w3m"
;;   '(progn
;;      (setq w3m-use-cookies t)
;;      (setq w3m-default-display-inline-images t)

;;      (setq browse-url-browser-function 'browse-url-generic)
;;      (setq browse-url-generic-program "/usr/bin/firefox")))

;; (defun choose-browser (url &rest args)
;;   (interactive "sURL: ")
;;   (if (y-or-n-p "Use external browser?")
;;       (browse-url-generic url)
;;     (w3m-browse-url url)))

;; (setq browse-url-browser-function 'choose-browser)

(require 'eww)

(defvar gcs-shr-width 110)


;; eww stupidly overrides shr-width before calling shr-insert-document to render a page. So,
;; un-override it.
(defadvice shr-insert-document (around force-shr-width activate)
  (let ((shr-width (min (1- (window-width)) gcs-shr-width)))
    ad-do-it))

(defun eww-increase-width ()
  (interactive)
  (make-local-variable 'gcs-shr-width)
  (setq gcs-shr-width  (+ 10 gcs-shr-width))
  (eww-reload))
(define-key eww-mode-map (read-kbd-macro "+") 'eww-increase-width)

(defun eww-decrease-width ()
  (interactive)
  (make-local-variable 'gcs-shr-width)
  (setq gcs-shr-width  (- gcs-shr-width 10))
  (eww-reload))
(define-key eww-mode-map (read-kbd-macro "-") 'eww-decrease-width)

(provide 'browser-customize)
