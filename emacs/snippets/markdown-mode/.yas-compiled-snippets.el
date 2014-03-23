;;; Compiled snippets and support files for `markdown-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'markdown-mode
                     '(("+" "+ ${1:Unordered List}\n+$0" "Unordered List" nil nil nil nil nil nil)
                       ("-" "- ${1:Unordered List}\n-$0" "Unordered List" nil nil nil nil nil nil)
                       ("README.markdown" "# Octopress snippets\n\nA number of YASnippets that make writing Octopress posts and pages easier when using Emacs.\n\n## Installation\n\ninstall these snippets under the markdown-mode snippets directory in\nyour YASnippets installation. these may be placed directly in the\nmarkdown-mode direectory or within a subdirectory.\n\ndepending on how your YASnippet configuration is setup this may require\nissuing a ```yas/reload-all``` or restarting Emacs in order to pick up\nthe additions.\n" "README.markdown" nil nil nil nil nil nil)
                       ("_" "_${1:Emphasized Text}_ $0" "Emphasis" nil nil nil nil nil nil)
                       ("__" "**${1:Strong Text}** $0" "Strong" nil nil nil nil nil nil)
                       ("`" "\\`${1:Code}\\` $0" "Inline Code" nil nil nil nil nil nil)
                       ("bq" "{% blockquote %}\n${1:Quote}\n{% endblockquote %}\n\n$0" "Blockquote simple" nil
                        ("Octopress")
                        nil nil nil nil)
                       ("bqa" "{% blockquote ${1:Author}, ${2:Title} %}\n${3:Quote}\n{% endblockquote %}\n\n$0" "Blockquote author" nil
                        ("Octopress")
                        nil nil nil nil)
                       ("bql" "{% blockquote ${1:Author} ${2:URL} ${3:link title} %}\n${4:Quote}\n{% endblockquote %}\n\n$0" "Blockquote link" nil
                        ("Octopress")
                        nil nil nil nil)
                       ("bqt" "{% blockquote @${1:twitter} ${2:Twiter URL} %}\n${3:Quote}\n{% endblockquote %}\n\n$0" "Blockquote twitter" nil
                        ("Octopress")
                        nil nil nil nil)
                       ("btcodef" "\\`\\`\\` ${1:Language} ${2:Title} ${3:URL} ${4:Link Text}\n${5:code-block}\n\\`\\`\\`\n\n$0" "Backtick codeblock full" nil
                        ("Octopress")
                        nil nil nil nil)
                       ("btcodes" "\\`\\`\\`\n${1:code-block}\n\\`\\`\\`\n\n$0" "Backtick codeblock simple" nil
                        ("Octopress")
                        nil nil nil nil)
                       ("codeblockf" "{% codeblock ${1:Title} lang:${2:Language} ${3:URL} ${4:Link text} %}\n${5:code-block}\n{% endcodeblock %}\n\n$0" "Codeblock full" nil
                        ("Octopress")
                        nil nil nil nil)
                       ("codeblocks" "{% codeblock %}\n${1:code-block}\n{% endcodeblock %}\n\n$0" "Codeblock simple" nil
                        ("Octopress")
                        nil nil nil nil)
                       ("gistf" "{% gist ${1:gist-id} ${2:filename} %}\n\n$0" "Gist Import - multifile gist" nil
                        ("Octopress")
                        nil nil nil nil)
                       ("gists" "{% gist ${1:gist-id} %}\n\n$0" "Gist Import - simple" nil
                        ("Octopress")
                        nil nil nil nil)
                       ("h1" "# ${1:Header 1} #\n\n$0" "Header 1 (#)" nil nil nil nil nil nil)
                       ("h1" "${1:Header 1}\n${1:$(make-string (string-width text) ?\\=)}\n\n$0" "Header 1 (=)" nil nil nil nil nil nil)
                       ("h2" "## ${1:Header 1} ##\n\n$0" "Header 2 (##)" nil nil nil nil nil nil)
                       ("h2" "${1:Header 2}\n${1:$(make-string (string-width text) ?\\-)}\n\n$0" "Header 2 (-)" nil nil nil nil nil nil)
                       ("h3" "### ${1:Header 3} ###\n\n$0" "Header 3" nil nil nil nil nil nil)
                       ("h4" "#### ${1:Header 4} ####\n\n$0" "Header 4" nil nil nil nil nil nil)
                       ("h5" "##### ${1:Header 5} #####\n\n$0" "Header 5" nil nil nil nil nil nil)
                       ("h6" "###### ${1:Header 6} ######\n\n$0" "Header 6" nil nil nil nil nil nil)
                       ("hr" "\n----------\n\n$0" "Horizontal Rule (-)" nil nil nil nil nil nil)
                       ("hr" "\n*******\n\n$0" "Horizontal Rule (*)" nil nil nil nil nil nil)
                       ("image" "{% img ${1:class} ${2:URL} ${3:width} ${4:height} ${5:title text} ${6:alt text} %}\n\n$0\n" "Image" nil
                        ("Octopress")
                        nil nil nil nil)
                       ("img" "![${1:Alt Text}](${2:URL} $3) $0" "Image" nil nil nil nil nil nil)
                       ("link" "[${1:Link Text}](${2:URL} $3) $0" "Link" nil nil nil nil nil nil)
                       ("more" "<!-- more -->\n\n$0" "<!-- more -->" nil
                        ("Octopress")
                        nil nil nil nil)
                       ("ol" "${1:1}. ${2:Text}\n${1:$(number-to-string (1+ (string-to-number text)))}. $0" "Ordered List" nil nil nil nil nil nil)
                       ("rimg" "![${1:Alt Text}][$2] $0" "Referenced Image" nil nil nil nil nil nil)
                       ("rlb" "[${1:Reference}]: ${2:URL} $3\n$0" "Reference Label" nil nil nil nil nil nil)
                       ("rlink" "[${1:Link Text}][$2] $0" "Reference Link" nil nil nil nil nil nil)
                       ("tmblck" "----------------------\n\n**${1:Timestamp}**\n\n$2\n\n$0" "Time Block" nil nil nil nil nil nil)
                       ("video" "{% video ${1:video_url} ${2:width} ${3:height} ${4:url/to/poster} %}" "Video" nil nil nil nil nil nil)
                       ("youtube" "{% youtube  ${1:video id} %}\n\n$0" "Youtube link" nil
                        ("Octopress")
                        nil nil nil nil)))


;;; Do not edit! File generated at Sun Nov 17 13:59:52 2013
