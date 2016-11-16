;;; package --- Summary
;;; Commentary:
;;; Code:
;; (eval-after-load 'flycheck
;;   '(custom-set-variables
;;    '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages)))

(with-eval-after-load 'flycheck
  (flycheck-pos-tip-mode)
  (flycheck-status-emoji-mode))

(provide 'flycheck-customize)
