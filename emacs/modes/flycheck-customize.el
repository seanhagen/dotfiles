;; (eval-after-load 'flycheck
;;   '(custom-set-variables
;;    '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages)))

(with-eval-after-load 'flycheck
  (flycheck-pos-tip-mode))

(provide 'flycheck-customize)
