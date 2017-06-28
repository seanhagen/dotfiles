(use-package pandoc-mode
  :init
  (add-hook 'markdowm-mode-hook 'pandoc-mode)
  (add-hook 'pandoc-mode-hook 'pandoc-load-default-settings))
