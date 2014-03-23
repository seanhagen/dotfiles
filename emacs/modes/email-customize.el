(require 'elmo-search)
(elmo-search-register-engine
    'mu 'local-file
    :prog "/usr/local/bin/mu" ;; or wherever you've installed it
    :args '("find" pattern "--fields" "l") :charset 'utf-8)

(setq elmo-search-default-engine 'mu)
;; for when you type "g" in folder or summary.
(setq wl-default-spec "[")


(provide 'email-customize)
