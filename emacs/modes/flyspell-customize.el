(autoload 'auto-dictionary-mode "auto-dictionary" )
(add-hook 'flyspell-mode-hook (lambda () (auto-dictionary-mode 1)))

(provide 'flyspell-customize)
