(require 'emms-setup)
(require 'emms-soundcloud)
(require 'emms-player-mplayer)

;;    M-x emms-play-soundcloud-set RET
;;    http://soundcloud.com/devolverdigital/sets/hotline-miami-official
;;    RET

(emms-all)
(emms-standard)
(emms-default-players)
(push 'emms-player-mplayer emms-player-list)

(setq emms-player-mpg321-parameters '("-o" "alsa"))

;; Show the current track each time EMMS
;; starts to play a track with "NP : "
(add-hook 'emms-player-started-hook 'emms-show)
(setq emms-show-format "NP: %s")

(define-emms-simple-player mplayer '(file url)
      (regexp-opt '(".ogg" ".mp3" ".wav" ".mpg" ".mpeg" ".wmv" ".wma"
                    ".mov" ".avi" ".divx" ".ogm" ".asf" ".mkv" "http://" "mms://"
                    ".rm" ".rmvb" ".mp4" ".flac" ".vob" ".m4a" ".flv" ".ogv" ".pls"))
      "mplayer" "-slave" "-quiet" "-really-quiet" "-fullscreen")

;; When asked for emms-play-directory,
;; always start from this one
(setq emms-source-file-default-directory "~/Music/")

(defun my-emms-play-pause ()
  "Starts emms playing if it's paused, otherwise pauses"
  (interactive)
  (if emms-player-playing-p
               (emms-pause)
             (emms-start)))

(provide 'emms-customize)
