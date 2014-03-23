(require 'dummy-h-mode)

(add-to-list 'auto-mode-alist '("\\.h$" . dummy-h-mode))
(autoload 'dummy-h-mode "dummy-h-mode" "Dummy H mode" t)

(add-hook 'dummy-h-mode-hook
          (lambda ()
            (setq dummy-h-mode-default-major-mode 'c++-mode)))

(require 'gccsense)
(require 'gdb-shell)
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)

;; Add further minor-modes to be enabled by semantic-mode.
;; See doc-string of `semantic-default-submodes' for other things
;; you can use here.
(add-to-list 'semantic-default-submodes 'global-semantic-idle-summary-mode t)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-completions-mode t)
(add-to-list 'semantic-default-submodes 'global-cedet-m3-minor-mode t)

;; Configure arduino OS X dirs.
(setq ede-arduino-appdir "/usr/local/arduino" )

(setq auto-mode-alist (cons '("\\.\\(pde\\|ino\\)$" . arduino-mode) auto-mode-alist))
(autoload 'arduino-mode "arduino-mode" "Arduino editing mode." t)

(defun setup-c++-mode ()
  (interactive)
  (semantic-mode 1)
  (global-ede-mode 1))


(provide 'c-customize)
