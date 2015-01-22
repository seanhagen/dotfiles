(autoload 'auto-dictionary-mode "auto-dictionary" )
(add-hook 'flyspell-mode-hook (lambda () (auto-dictionary-mode 1)))
(setq flyspell-issue-message-flg nil)

(provide 'flyspell-customize)
