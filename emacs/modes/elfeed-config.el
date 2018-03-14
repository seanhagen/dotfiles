;;; elfeed-config.el -- Summary:
;;; Commentary:
;;; Code:

;; elfeed-web
;; (require 'httpd)
;; (require 'elfeed-web)
;; (setf url-queue-timeout 30)

(defvar myelfeed-feeds
  (quote
   ("http://spoilerwarning.net/index.php/feed/"
    ("http://www.outsideonline.com/rss/all/rss.xml" outside)
    ("https://theiddm.wordpress.com/feed/" dnd)
    ("http://feeds.feedburner.com/CrackedRSS" cracked)
    ("https://theshedm.com/feed/" dnd)
    ("http://upandoutcomic.tumblr.com/rss" comic)
    ("http://www.marycagle.com/rss.php" comic)
    ("http://www.atomic-robo.com/rss.php" comic)
    ("http://www.hackaday.com/rss.xml" news hack)
    ("http://www.masteringemacs.org/feed/" emacs)
    ("http://whattheemacsd.com/atom.xml" emacs)
    ("http://emacsblog.org/feed/" emacs)
    ("http://www.reddit.com/r/emacs/.rss" emacs reddit)
    ("http://stonebreakercomic.com/feed/" comic)
    ("http://skadicomic.com/feed/" comic)
    ("http://www.awkwardzombie.com/awkward.php" comic)
    ("http://www.alicegrove.com/rss" comic)
    ("http://www.mfkcomic.com/feed/" comic)
    ("http://www.vgcats.com/super/se.rdf.xml" comic)
    ("http://www.vgcats.com/vgcats.rdf.xml" comic)
    ("http://fanboys-online.com/rss/comic.xml" comic)
    ("http://feeds.feedburner.com/DuelingAnalogs" comic)
    ("http://feeds.feedburner.com/Multiplex" comic)
    ("http://www.dumbingofage.com/feed/" comic)
    ("http://broodhollow.chainsawsuit.com/feed/" comic)
    ("http://www.johnnywander.com/feed" comic)
    ("https://penny-arcade.com/feed" comic)
    ("http://thepunchlineismachismo.com/feed" comic)
    ("http://feeds.feedburner.com/LICD" comic)
    ("http://threepanelsoul.com/rss.php" comic)
    ("http://pbfcomics.com/feed/feed.xml" comic)
    ("http://www.theglassscientists.com/?feed=rss2" comic)
    ("http://sufficientlyremarkable.com/main/rss" comic)
    ("http://feeds.feedburner.com/WastedTalentRss" comic)
    ("http://fluffernutters.thecomicseries.com/rss" comic)
    ("http://feeds.feedburner.com/omaketheater" comic)
    ("http://platinumblackcomic.com/feed" comic)
    ("http://www.cad-comic.com/rss/" comic)
    ("http://feeds2.feedburner.com/rsspect/fJur" comic)
    ("http://loldwell.com/?feed=rss2" comic)
    ("http://www.questionablecontent.net/QCRSS.xml" comic)
    ("http://campcomic.com/rss" comic)
    ("http://www.escapistmagazine.com/rss/articles/comicsandcosplay/comics/critical-miss" comic)
    ("http://dord.horse/rss" comic)
    ("http://xkcd.com/rss.xml" comic)
    ("http://www.hejibits.com/feed/" comic)
    ("http://theoatmeal.com/feed/rss" comic)
    ("http://feeds2.feedburner.com/thebrads" comic)
    ("http://madderermen.bitedaily.com/feeds/posts/default" comic)
    ("http://shortpacked.com/feed/" comic)
    ("http://www.marecomic.com/feed/" comic)
    ("http://tjandamal.com/comic/inc/feed.php" comic)
    ("http://trenchescomic.com/feed" comic)
    ("http://www.commitstrip.com/en/feed/" comic)
    ("http://feeds.feedburner.com/leftycartoons" comic)
    ("http://www.ndecomic.com/rss.php" comic)
    ("http://www.ma3comic.com/comic.rss" comic nsfw)
    ("http://www.sandraontherocks.com/comic.rss" comic nsfw)
    ("http://www.dangerouslychloe.com/comic.rss" comic nsfw)
    ("http://oglaf.com/feeds/rss/" comic nsfw)
    ("http://www.ohjoysextoy.com/feed/" comic nsfw)
    ("http://buttsmithy.com/?feed=rss2" comic nsfw)
    "http://snook.ca/jonathan/index.rdf" "http://benno.id.au/blog/feed/" "http://html5doctor.com/feed/" "http://blog.ircmaxell.com/feeds/posts/default" "http://www.codinghorror.com/blog/index.xml" "http://lemonodor.com/rss10-full.xml" "https://hacks.mozilla.org/feed/" "http://martinfowler.com/bliki/bliki.atom" "http://feeds.feedburner.com/html5rocks" "http://feeds.feedburner.com/HighScalability" "http://lispy.wordpress.com/feed/" "http://lukego.livejournal.com/data/rss" "http://lambda-the-ultimate.org/rss.xml" "http://steve-yegge.blogspot.com/feeds/posts/default" "http://www.straight.com/content/rss/news-and-views" "http://endlessparentheses.com/atom.xml" "http://www.alistapart.com/rss.xml" "http://feeds.feedburner.com/blogspot/hsDu" "http://christianheilmann.com/feed/" "http://davanum.wordpress.com/feed/" "http://nullprogram.com/feed/" "http://feeds.feedburner.com/holman" "http://p-cos.blogspot.com/feeds/posts/default" "http://www.freedom-to-tinker.com/?feed=rss2" "http://feeds.feedburner.com/bendiken" "http://blog.humblebundle.com/rss" "http://www.feministfrequency.com/?feed=rss2" "http://postsecret.blogspot.com/feeds/posts/default" "http://suddenlyelephants.blogspot.com/feeds/posts/default" "http://www.joelonsoftware.com/rss.xml" "http://stephenrees.wordpress.com/feed/" "http://what-if.xkcd.com/feed.atom" "http://feeds.feedburner.com/TestedAll" "http://www.booksofadam.com/feeds/posts/default" "http://www.escapistmagazine.com/rss/videos/list/1.xml" "http://feeds.feedburner.com/20bits" "http://hucksblog.blogspot.com/feeds/posts/default" "http://ialwayswondered.jarrettgreen.com/feed/" "http://ridenorth.tumblr.com/rss" "http://www.tendernuggets.com/feeds/posts/default" "http://ch00ftech.com/feed/" "http://matthewrobertson.org/atom.xml" "http://www.chocolatehammer.org/?feed=rss2" "http://feeds.feedburner.com/warpspire" "http://blog.okcupid.com/index.php/feed/" "http://feeds.feedburner.com/Hyperbole-and-a-half" "http://thelastpsychiatrist.com/atom.xml" "http://www.keegan.org/reprapblog/feed" "http://www.volpinprops.com/feed/atom/" "http://seanhagen.ca/rss/" "http://blog.deliciousjuice.com/feed"
    ("http://slyflourish.com/index.xml" dnd)
    ("http://everyday-carry.com/rss" edc)
    ("http://indefinitelywild.gizmodo.com/rss" news)
    ("http://www.shamusyoung.com/twentysidedtale/?feed=rss2" 20sided)
    ("http://thetyee.ca/rss2.xml" news))))

(use-package elfeed
  :config
  (setq elfeed-feeds myelfeed-feeds
        elfeed-sort-order 'ascending)

  (defface bb-elfeed-entry
    '((t :foreground "#f0f"))
    "BoingBoing link")
  (push '(boingboing bb-elfeed-entry)
        elfeed-search-face-alist)

  (defface comics-elfeed-entry
    '((t :foreground "#32cd32"))
    "Marks a webcomic link")
  (push '(comic comics-elfeed-entry)
        elfeed-search-face-alist)

  (defface news-elfeed-entry
    '((t :foreground "#1e90ff"))
    "Marks a news link")
  (push '(news news-elfeed-entry)
        elfeed-search-face-alist)

  (defface cracked-elfeed-entry
    '((t :foreground "#0fde90"))
    "Marks a Cracked link")
  (push '(cracked cracked-elfeed-entry)
        elfeed-search-face-alist)

  (defface edc-elfeed-entry
    '((t :foreground "#8b6969"))
    "Marks EDC links")
  (push '(edc edc-elfeed-entry)
        elfeed-search-face-alist)

  (defface emacs-elfeed-entry
    '((t :foreground "#00bfff"))
    "Marks emacs entry")
  (push '(emacs emacs-elfeed-entry)
        elfeed-search-face-alist)

  (defface reddit-elfeed-entry
    '((t :underline t
         :slant italic))
    "Marks reddit links")
  (push '(reddit reddit-elfeed-entry)
        elfeed-search-face-alist))

(provide 'elfeed-config)
;;; elfeed-config.el ends here
