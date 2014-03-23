(require 'less-css-mode)
(require 'sass-mode)
(require 'scss-mode)

(add-to-list 'auto-mode-alist '("\\.sass$" . setup-sass-mode))
(add-to-list 'auto-mode-alist '("\\.scss$" . setup-scss-mode))
(add-to-list 'auto-mode-alist '("\\.less$" . setup-less-mode))

(defun setup-sass-mode ()
  (interactive)
  (sass-mode)
  (flymake-sass-load))

(defun setup-scss-mode ()
  (interactive)
  (scss-mode)
  (flymake-scss-init))

(defun setup-less-mode ()
  (interactive)
  (less-css-mode)
  (flymake-less-load))

(provide 'css-customize)
