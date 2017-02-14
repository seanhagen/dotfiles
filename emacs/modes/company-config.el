;;; company-config.el --- Summary
;;; Commentary:
;;; Code:
(use-package company
  :demand
  :diminish company
  :init
  (global-company-mode 1)
  :config
  (global-company-mode 1)
  (setq company-idel-delay 0.7
        company-tooltip-limit 20
        company-minimum-prefix-length 2
        company-echo-delay 1
        company-begin-commands '(self-insert-command)
        company-tooltip-flip-when-above t
        company-backends (delete 'company-dabbrev company-backends))
  :bind ("S-SPC" . company-complete))

(use-package company-arduino
  :init
  (add-hook 'irony-mode-hook 'company-arduino-turn-on)
  :config
  (push 'company-arduino company-backends))

(use-package company-c-headers
  :config
  (push 'company-c-headers company-backends))

(use-package company-irony
  :after irony
  :config
  (push 'company-irony company-backends))

(use-package company-irony-c-headers
  :config
  (push 'company-irony-c-headers company-backends))

(use-package company-go
  :after go-mode
  :config
  (push 'company-go company-backends))

;; (use-package company-inf-ruby
;;   :after company
;;   :config
;;   (push 'company-inf-ruby company-backends))

(use-package company-tern
  :config
  (push 'company-tern company-backends))
