;;; hydra-config.el --- Summary
;;; Commentary:
;;; Code:

(use-package hydra
  :ensure hydra
  :bind (("C-c f" . hydra/daily-common/body)
         ("C-c e" . hydra/evaling/body)
         ("C-c m" . hydra/music/body))
  :init
  (defhydra hydra/daily-common (:color blue)
    "The common stuff that I use all the time"
    ("p" prodigy "Prodigy")
    ("P" paradox-list-packages "Paradox")
    ("e" notmuch "Notmuch")
    ("E" (lambda () (interactive) (elfeed)) "Elfeed")
    ("t" twit "Twitter")
    ("T" tumblesocks-view-dashboard "Tumblr")
    ("q" nil "quit"))

  (defhydra hydra/music (:color blue)
    "Controlling SimpleMPC"
    ("t" (lambda () (interactive) (simple-mpc-toggle)) "Toggle")
    ("l" (lambda () (interactive) (simple-mpc)) "Open SimpleMPC")
    ("n" (lambda () (interactive) (simple-mpc-next)) "Next Song")
    ("p" (lambda () (interactive) (simple-mpc-prev)) "Prev Song"))

  (defhydra hydra/evaling (:color blue)
    "Evalling stuff"
    ("b" eval-buffer "buffer")
    ("r" eval-region "region")
    ("p" eval-last-sexp "last")
    ("d" eval-defun "defun")
    ("e" eval-expression "expression")
    ("q" nil "quit")))

(provide 'hydra-config)
;;; hydra-config.el ends here
