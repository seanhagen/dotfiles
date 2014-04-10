(require 'dired+)
(require 'dired-details)
(require 'dired-details+)
(require 'dired-single)
(require 'dired-toggle-sudo)
(require 'image+)
(require 'look-mode)

(eval-after-load 'image-dired '(require 'image-dired+))

(dired-details-install)
;; '(' hides details
;; ')' shows details


(define-key dired-mode-map (kbd "C-c C-s") 'dired-toggle-sudo)
(eval-after-load 'tramp
 '(progn
    ;; Allow to use: /sudo:user@host:/path/to/file
    (add-to-list 'tramp-default-proxies-alist
		  '(".*" "\\`.+\\'" "/ssh:%h:"))))

(provide 'dired-customize)
