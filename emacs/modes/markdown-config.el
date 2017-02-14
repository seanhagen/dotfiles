(use-package markdown-mode
  :mode "\\.md$" "\\.markdown$"
  :init
  (add-hook 'markdown-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil)
            (setq tab-width 4)
            (define-key markdown-mode-map (kbd "<tab>") 'traditional-indent)
            (define-key markdown-mode-map (kbd "S-<tab>") 'traditional-outdent))))

(use-package markdwon-toc
  :commands markdown-toc-generate-toc
  :bind (:map markdown-mode-map
              ("C-x t" . markdown-toc-generate-toc)))

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

;; markdown-preview-mode
