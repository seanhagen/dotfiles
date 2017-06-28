
(use-package hideshow
  :diminish hs-minor-mode
  :init
  (add-hook 'ruby-mode-hook 'hs-minor-mode)
  (setq hs-set-up-overlay 'display-code-line-counts)
  :config
  (add-to-list 'hs-special-modes-alist
               '(ruby-mode
                 "\\(def\\|do\\)"
                 "end"
                 "#"
                 (lambda (arg) (ruby-end-of-block))
                 nil ))
  )

     (require 'hideshow)

;; (eval-after-load "hideshow"
;;   '(add-to-list 'hs-special-modes-alist
;;                  `(ruby-mode
;;                    "\\(def\\|class\\|module\\|{\\|[\\|do\\)"
;;                    "\\(end\\|end\\|end\\|}\\|]\\|end\\)"
;;                    "#"
;;                    (lambda (arg) (ruby-end-of-block)) nil)))
;;                    ;; ,(rx (or "def" "class" "module" "{" "[" "do"))  ; Block start
;;                    ;; ,(rx (or "end" "end"   "end"     "}" "]" "end")); Block end
;;                    ;; ,(rx (or "#" "=begin"))                   ; Comment start
;;                    ;; ruby-forward-sexp nil)))



;; (add-to-list 'hs-special-modes-alist
;; 	     '(ruby-mode
;; 	       "\\(def\\|do\\|{\\)" "\\(end\\|end\\|}\\)" "#"
;; 	       (lambda (arg) (ruby-end-of-block)) nil))

;; (defun toggle-selective-display (column)
;;       (interactive "P")
;;       (set-selective-display
;;        (or column
;;            (unless selective-display
;;              (1+ (current-column))))))

;; (defun toggle-hiding (column)
;;       (interactive "P")
;;       (if hs-minor-mode
;;           (if (condition-case nil
;;                   (hs-toggle-hiding)
;;                 (error t))
;;               (hs-show-all))
;;         (toggle-selective-display column)))

;; (load-library "hideshow")
;; (global-set-key (kbd "C-+") 'toggle-hiding)
;; (global-set-key (kbd "C-\\") 'toggle-selective-display)



(defun display-code-line-counts (ov)
  (when (eq 'code (overlay-get ov 'hs))
    (overlay-put ov 'help-echo
                 (buffer-substring (overlay-start ov)
                                   (overlay-end ov)))))
