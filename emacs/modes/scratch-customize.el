;; put fortune in scratch buffer
(setq initial-scratch-message
      (format
       ";; %s\n\n"
       (replace-regexp-in-string
        "\n" "\n;; " ; comment each line
        (replace-regexp-in-string
         "\n$" ""    ; remove trailing linebreak
         (shell-command-to-string "fortune")))))

(provide 'scratch-customize)
