;; (require 'confluence)
;; (setq confluence-url "https://broadbandtvcorp.atlassian.net/wiki/rpc/xmlrpc")
;; (global-set-key "\C-xwf" 'confluence-get-page)

;; (autoload 'confluence-get-page "confluence" nil t)

;; (add-hook 'confluence-edit-mode-hook
;;   (local-set-key "\C-xw" confluence-prefix-map)
;;   (local-set-key "\M-j" 'confluence-newline-and-indent)
;;   (local-set-key "\M-;" 'confluence-list-indent-dwim))

;; (eval-after-load "confluence"
;;   '(progn
;;      (require 'longlines)
;;      (progn
;;        (add-hook 'confluence-mode-hook 'longlines-mode)
;;        (add-hook 'confluence-before-save-hook 'longlines-before-revert-hook)
;;        (add-hook 'confluence-before-revert-hook 'longlines-before-revert-hook)
;;        (add-hook 'confluence-mode-hook (lambda () (local-set-key "\C-j" 'confluence-newline-and-indent))))))

;; (autoload 'longlines-mode "longlines" "LongLines Mode." t)

;; (eval-after-load "longlines"
;;   '(progn
;;      (defvar longlines-mode-was-active nil)
;;      (make-variable-buffer-local 'longlines-mode-was-active)

;;      (defun longlines-suspend ()
;;        (if longlines-mode
;;            (progn
;;              (setq longlines-mode-was-active t)
;;              (longlines-mode 0))))

;;      (defun longlines-restore ()
;;        (if longlines-mode-was-active
;;            (progn
;;              (setq longlines-mode-was-active nil)
;;              (longlines-mode 1))))

;;      ;; longlines doesn't play well with ediff, so suspend it during diffs
;;      (defadvice ediff-make-temp-file (before make-temp-file-suspend-ll
;;                                              activate compile preactivate)
;;        "Suspend longlines when running ediff."
;;        (with-current-buffer (ad-get-arg 0)
;;          (longlines-suspend)))

    
;;      (add-hook 'ediff-cleanup-hook 
;;                (lambda ()
;;                   (dolist (tmp-buf (list ediff-buffer-A
;;                                          ediff-buffer-B
;;                                          ediff-buffer-C))
;;                     (if (buffer-live-p tmp-buf)
;;                         (with-current-buffer tmp-buf
;;                           (longlines-restore))))))))

;; (require 'jira)
;; (setq jira-url "https://broadbandtvcorp.atlassian.net/")

(provide 'atlasian-customize)
