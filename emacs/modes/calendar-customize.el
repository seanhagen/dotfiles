(require 'calfw)
(require 'calfw-ical)

(defun open-google-calendar ()
  (interactive)
  (cfw:open-ical-calendar "https://www.google.com/calendar/ical/sean.hagen%40gmail.com/private-50847daeabf7d9478fd9b09eaaa36f4e/basic.ics"))

(defun open-meetup-calendar ()
  (interactive)
  (cfw:open-ical-calendar "https://www.google.com/calendar/ical/mkuie74gnknid9u395r89jldjs4que2h%40import.calendar.google.com/public/basic.ics"))

(defun open-thoughtshop-calendar ()
  (interactive)
  (cfw:open-ical-calendar "http://www.google.com/calendar/ical/sean%40thoughtshop.com/public/basic.ics"))

(setq cfw:fchar-junction ?╋
      cfw:fchar-vertical-line ?┃
      cfw:fchar-horizontal-line ?━
      cfw:fchar-left-junction ?┣
      cfw:fchar-right-junction ?┫
      cfw:fchar-top-junction ?┯
      cfw:fchar-top-left-corner ?┏
      cfw:fchar-top-right-corner ?┓)

(provide 'calendar-customize)
