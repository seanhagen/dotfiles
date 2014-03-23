(require 'eredis)
;; Usage: 
;; (eredis-connect "localhost" "6379")
;; ...
;; (eredis-set "key" "value") "ok"
;; (eredis-get "key") "value"
;; ...
;; (eredis-disconnect)

(require 'inf-mongo)
(require 'mongo)

(provide 'database-customize)
