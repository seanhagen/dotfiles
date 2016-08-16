(defun get-above-makefile ()
  (expand-file-name
   "Makefile" (loop as d = default-directory then
                    (expand-file-name
                     ".." d) if (file-exists-p (expand-file-name "Makefile" d)) return
                     (shell-quote-argument d))))

;; bind compiling with get-above-makefile to f5
(global-set-key (kbd "C-c C-k")
                (lambda () (interactive)
                  (compile (format
                            "make -f %s" (get-above-makefile)))))



(provide 'compiler-customize)
