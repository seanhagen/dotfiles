(require 'w3m)
(require 'mime-w3m)
(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
(setq w3m-use-cookies t)
(setq w3m-default-display-inline-images t)

(setq browse-url-browser-function 'browse-url-generic)
(setq browse-url-generic-program "/usr/bin/firefox")

(defun choose-browser (url &rest args)
  (interactive "sURL: ")
  (if (y-or-n-p "Use external browser?")
      (browse-url-generic url)
    (w3m-browse-url url)))

(setq browse-url-browser-function 'choose-browser)

(defun w3m-copy-url-at-point ()
  (interactive)
  (let ((url (w3m-anchor)))
    (if (w3m-url-valid url)
        (kill-new (w3m-anchor))
      (message "No URL at point!"))))
(add-hook 'w3m-mode-hook
          (lambda ()
            (local-set-key "\M-W" 'w3m-copy-url-at-point)))

(provide 'browser-customize)
