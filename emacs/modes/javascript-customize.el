(add-to-list 'auto-mode-alist '("\\.js$" . setup-javascript-mode))

(add-hook 'js2-mode-hook 'skewer-mode)
(add-hook 'css-mode-hook 'skewer-css-mode)
(add-hook 'html-mode-hook 'skewer-html-mode)

(defun setup-javascript-mode ()
  (interactive)
  (require 'websocket)
  (require 'js2-mode)
  (require 'js2-refactor)
  (require 'jss)
  (require 'js-comint)
  (require 'jquery-doc)
  (require 'nodejs-repl)
  (js2-mode)
  (setq inferior-js-program-command "/usr/local/node/bin/node -i")
  (define-key js2-mode-map (kbd "TAB") 'js2-tab-properly)
  (define-key js2-mode-map (kbd "C-a") nil)
  (define-key js2-mode-map (kbd "C-c C-n") 'js2-next-error)
  (local-set-key "\C-x\C-e" 'js-send-last-sexp)
  (local-set-key "\C-\M-x" 'js-send-last-sexp-and-go)
  (local-set-key "\C-cb" 'js-send-buffer)
  (local-set-key "\C-c\C-b" 'js-send-buffer-and-go)
  (local-set-key "\C-cl" 'js-load-file-and-go))

;; js2-mode steals TAB, let's steal it back for yasnippet
(defun js2-tab-properly ()
	(interactive)
	(let ((yas/fallback-behavior 'return-nil))
		(unless (yas/expand)
			(indent-for-tab-command)
			(if (looking-back "^\s*")
					(back-to-indentation)))))

(provide 'javascript-customize)