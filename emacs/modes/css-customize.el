(autoload 'sass-mode "sass-mode")
(autoload 'scss-mode "scss-mode")
(autoload 'less-mode "less-mode")

(add-to-list 'auto-mode-alist '("\\.sass$" . sass-mode))
(add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode))
(add-to-list 'auto-mode-alist '("\\.less$" . less-mode))

(provide 'css-customize)
