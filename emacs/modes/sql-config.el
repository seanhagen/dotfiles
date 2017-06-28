;;; sql-config.el --- Summary
;;; Commentary:
;;; Code:

;; (eval-after-load "sql"
;;   (load-library "sql-indent"))


(use-package sql
  :config
  (setq sql-connection-alist
        '((spacelist (sql-product 'postgres)
                     (sql-port 5432)
                     (sql-server "127.0.0.1")
                     (sql-user "deploy")
                     (sql-database "spacelist_development"))
          (phoney (sql-product 'postgres)
                  (sql-port 5454)
                  (sql-server "127.0.0.1")
                  (sql-user "pm")
                  (sql-password "pm")
                  (sql-database "phonemetrics"))
          )
        )

  (defun my-sql-connect (product connection)
    (setq sql-product product)
    (sql-connect connection))

  (defun spacelocal-database ()
    (interactive)
    (my-sql-connect 'postgres 'spacelist))

  (defun phoney-database ()
    (interactive)
    (my-sql-connect 'postgres 'phoney))
  )

(use-package edbi
  :commands edbi:open-db-viewer)

(use-package edbi-database-url
  :commands edbi-database-url
  :init
  (defun edbi-spacelist-local ()
    (interactive)
    (edbi-database-url "pgsql://deploy:@127.0.0.1:5432/spacelist_development"))
  )

(use-package edbi-minor-mode
  :init
  (add-hook 'sql-mode-hook 'edbi-minor-mode)
  (add-hook 'sql-interactive-mode-hook 'edbi-minor-mode))

(use-package edbi-sqlite
  :commands edbi-sqlit)

(provide 'sql-config)
;;; sql-config.el ends here
