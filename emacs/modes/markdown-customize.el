(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.text$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.txt$" . markdown-mode))

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
