(add-to-list 'auto-mode-alist '("\\.coffee$" . setup-coffee-mode))

(defun setup-coffee-mode ()
  (interactive)
  (require 'coffee-mode)
  (coffee-mode))

(provide 'coffee-customize)
