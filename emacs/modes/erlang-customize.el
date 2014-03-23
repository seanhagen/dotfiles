(add-to-list 'auto-mode-alist '("\\.erl\\'" . startup-erlang-stuff))

(defun startup-erlang-stuff ()
  (require 'erlang-start)
  (erlang-mode))

(provide 'erlang-customize)
