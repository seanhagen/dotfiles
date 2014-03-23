(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.txt\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))

;; (defadvice markdown-cycle (around indent-active-region-rigidly (&optional arg shift) activate)
;;	(if (use-region-p)
;;			(save-excursion
;;				(let ((rb (region-beginning))
;;							(re (region-end)))
;;					(goto-char rb)
;;					(beginning-of-line)
;;					(indent-rigidly (point)
;;													re
;;													(if shift (- tab-width) tab-width))
;;					(setq deactivate-mark nil)))
;;		ad-do-it))

;; (add-hook 'markdown-mode-hook
;;					(lambda ()
;;						(fset 'markdown-shifttab
;;									(lambda ()
;;										(interactive)
;;										(markdown-cycle t t)))))

(defun traditional-indent ()
  (interactive)
  (if mark-active
    (indent-rigidly (region-beginning) (region-end) tab-width)
    (indent-to-column tab-width)))

;; Inverse.

(defun traditional-outdent ()
  (interactive)
  (if mark-active
    (indent-rigidly (region-beginning) (region-end) (* tab-width -1))
    (delete-backward-char tab-width)))

(add-hook 'markdown-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil)
            (setq tab-width 4)
            (define-key markdown-mode-map (kbd "<tab>") 'traditional-indent)
            (define-key markdown-mode-map (kbd "S-<tab>") 'traditional-outdent)))

(defun turn-on-flyspell () (flyspell-mode 1))
(add-hook 'markdown-mode-hook 'turn-on-flyspell)

(provide 'markdown-customize)
