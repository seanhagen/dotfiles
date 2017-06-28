;;; dired-config.el --- Summary
;;; Commentary:
;;; Code:

(use-package dired
  :config
  (use-package dired-hide-dotfiles))


(use-package dired+)

(use-package dired-details
  :config
  (dired-details-install))

(use-package dired-details+)

(use-package dired-rainbow)

(use-package image+)

(use-package image-dired+)

(use-package dired-efap
  :bind (:map dired-mode-map
              ("r" . dired-efap)))

(use-package dired-subtree
  :ensure t
  :after dired
  :config
  (bind-key "<tab>" #'dired-subtree-toggle dired-mode-map)
  (bind-key "<backtab>" #'dired-subtree-cycle dired-mode-map))

;; (define-key dired-mode-map [f2] 'dired-efap)
;; ;;; Only if you want to control rename with the mouse...
;; (define-key dired-mode-map [down-mouse-1] 'dired-efap-click)

;; dired-filetype-face
;; dired-filter
;; dired-open
;; dired-single
;; dired-toggle
;; dired-toggle-sudo


;; (require 'dired-single)
;; (require 'dired-toggle-sudo)
;; (require 'image+)
;; (require 'look-mode)

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
