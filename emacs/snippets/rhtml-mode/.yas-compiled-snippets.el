;;; Compiled snippets and support files for `rhtml-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'rhtml-mode
                     '(("%" "<%$0 -%>\n" "<%$. -%>" nil nil nil nil nil nil)
                       ("%%" "<%=$0 %>\n" "<%=$. %>" nil nil nil nil nil nil)
                       ("%ft" "<% form_tag(:action => \"${update}\") do %>\n$0\n<% end %>\n" "<% form_tag(:action => \" ... \") do %> ... <% end  %>" nil nil nil nil nil nil)
                       ("%h" "<%=h ${@item} %>\n" "<%=h  ...  %>" nil nil nil nil nil nil)
                       ("%if" "<% if ${cond} -%>\n$0\n<% end -%>\n" "<% if  ...  -%> $. <% end -%>" nil nil nil nil nil nil)
                       ("%ifel" "<% if $0cond} -%>\n$0\n<% else -%>\n<% end -%>\n" "<% if  ...  -%> $. <% else -%> <% end -%>" nil nil nil nil nil nil)
                       ("%lia" "<%= link_to \"${title}\", :action => \"${index}\" %>$0" "<%= link_to \" ... \", :action => \" ... \" %>" nil nil nil nil nil nil)
                       ("%liai" "<%= link_to \"${title}\", :action => \"${edit}\", :id => ${@item} %>$0" "<%= link_to \" ... \", :action => \" ... \", :id =>  ...  %>" nil nil nil nil nil nil)
                       ("%lic" "<%= link_to \"${title}\", :controller => \"${items}\" %>$0" "<%= link_to \" ... \", :controller => \" ... \" %>" nil nil nil nil nil nil)
                       ("%lica" "<%= link_to \"${title}\", :controller => \"${items}\", :action => \"${index}\" %>$0" "<%= link_to \" ... \", :controller => \" ... \", :action => \" ... \" %>" nil nil nil nil nil nil)
                       ("%licai" "<%= link_to \"${title}\", :controller => \"${items}\", :action => \"${edit}\", :id => ${@item} %>$0" "<%= link_to \" ... \", :controller => \" ... \", :action => \" ... \", :id =>  ...  %>" nil nil nil nil nil nil)
                       ("%rp" "<%= render(:partial => \"${action}\"$0 ) %>" "<%= render(:partial => ... ) %>" nil nil nil nil nil nil)
                       ("%ta" "<%= text_area(\"${object_name}\", \"${method}\"$0) %>\n" "<%= text_area(\" ... \", \" ... \") %>" nil nil nil nil nil nil)
                       ("%tf" "<%= text_field(\"${object_name} \", \"${method}\"$0) %>" "<%= text_field(\" ... \", \" ... \") %>" nil nil nil nil nil nil)
                       ("%unless" "<% unless ${cond} -%>\n$0\n<% end -%>\n" "<% unless  ...  -%> $. <% end -%>" nil nil nil nil nil nil)))


;;; Do not edit! File generated at Sun Nov 17 13:59:54 2013
