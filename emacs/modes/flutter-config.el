;;; package -- Summary
;;; flutter-config.el
;;; Commentary:
;;; Code:

(use-package dart-mode
  :custom
  (dart-format-on-save t)
  (dart-enable-analysis-server t)
  (dart-sdk-path "/usr/local/flutter/bin/cache/dart-sdk/"))

(use-package flutter
  :after dart-mode
  :bind (:map dart-mode-map
              ("C-M-x" . #'flutter-run-or-hot-reload))
  :custom
  (flutter-sdk-path "/usr/local/flutter/"))

(provide 'flutter-config)
;;; flutter-config.el ends here
