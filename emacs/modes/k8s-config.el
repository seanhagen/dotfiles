;;; k8s-config.el --- Summary
;;; Commentary:
;;; Code:

(use-package timonier)

(use-package kubernetes
  :ensure t
  :commands (kubernetes-overview))

(provide 'k8s-config)
;;; k8s-config.el ends here
