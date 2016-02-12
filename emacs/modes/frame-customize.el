(defun apply-color-theme (frame)
  (select-frame frame)
  (load-theme 'sean))

(add-hook 'after-make-frame-functions 'apply-color-theme)

(provide 'frame-customize)
