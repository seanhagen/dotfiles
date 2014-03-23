(add-to-list 'auto-mode-alist '("\\.pp$" . setup-puppet-mode))
(add-to-list 'auto-mode-alist '("Puppetfile$" . setup-puppetfile-mode))

(defun setup-puppet-mode ()
  (interactive)
  (require 'puppet-mode)
  (puppet-mode))

(defun setup-puppetfile-mode ()
  (interactive)
  (require 'puppetfile-mode)
  (puppetfile-mode))

(provide 'puppet-customize)
