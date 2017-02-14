;;; dired-config.el --- Summary
;;; Commentary:
;;; Code:

;; dired
;; dired+
;; dired-details
;; dired-details+
;; dired-filetype-face
;; dired-filter
;; dired-open
;; dired-rainbow
;; dired-single
;; dired-toggle
;; dired-toggle-sudo
;; dired-efap

;; (use-package dired+
;;   )

;; (require 'dired+)
;; (require 'dired-details)
;; (require 'dired-details+)
;; (require 'dired-single)
;; (require 'dired-toggle-sudo)
;; (require 'image+)
;; (require 'look-mode)
;; (require 'dired-rainbow)
;; (require 'dired-efap)

;; (eval-after-load 'image-dired '(require 'image-dired+))

;; (dired-details-install)
;; ;; '(' hides details
;; ;; ')' shows details


;; (defconst my-dired-media-files-extensions
;;   '("mp3" "mp4" "MP3" "MP4" "avi" "mpg" "flv" "ogg")
;;   "Media files.")

;; (dired-rainbow-define html "#4e9a06" ("htm" "html" "xhtml"))
;; (dired-rainbow-define media "#ce5c00" my-dired-media-files-extensions)


;; (define-key dired-mode-map (kbd "C-c C-s") 'dired-toggle-sudo)
;; ;; (eval-after-load 'tramp
;; ;;  '(progn
;; ;;     ;; Allow to use: /sudo:user@host:/path/to/file
;; ;;     (add-to-list 'tramp-default-proxies-alist
;; ;; 		  '(".*" "\\`.+\\'" "/ssh:%h:"))))
