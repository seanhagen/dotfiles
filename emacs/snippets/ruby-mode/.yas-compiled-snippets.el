;;; Compiled snippets and support files for `ruby-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'ruby-mode
                     '(("ae" "assert_equal ${expected}, ${actual}\n" "assert_equal  ... ,  ... " nil nil nil nil nil nil)
                       ("ako" "assert_kind_of ${class}, ${object}\n" "assert_kind_of  ... ,  ... " nil nil nil nil nil nil)
                       ("ann" "assert_not_nil ${object}\n" "assert_not_nil  ... " nil nil nil nil nil nil)
                       ("ar" "assert_raises ${Exception} { $. }\n" "assert_raises  ...  { $. }" nil nil nil nil nil nil)
                       ("ars" "assert_response :${success}\n" "assert_response : ... " nil nil nil nil nil nil)
                       ("art" "assert_redirected_to :controller => \"${controller}\"\n" "assert_redirected_to :controller => \" ... \"" nil nil nil nil nil nil)
                       ("bt" "belongs_to :${class}\n" "belongs_to : ... " nil nil nil nil nil nil)
                       ("flsh" "flash[:${notice}] = \"${Text here...}\"\n" "flash[: ... ] = \" ... \"" nil nil nil nil nil nil)
                       ("hm" "has_many :${class}\n" "has_many : ... " nil nil nil nil nil nil)
                       ("ho" "has_one :${class}\n" "has_one : ... " nil nil nil nil nil nil)
                       ("logi" "logger.info \"${Text here...}\"\n" "logger.info \" ... \"" nil nil nil nil nil nil)
                       ("par" "params[:${id}]\n" "params[: ... ]" nil nil nil nil nil nil)
                       ("ra" "render :action => \"${action}\"\n" "render :action => \" ... \"" nil nil nil nil nil nil)
                       ("ral" "render :action => \"${action}\", :layout => \"${layoutname}\"\n" "render :action => \" ... \", :layout => \" ... \"" nil nil nil nil nil nil)
                       ("rcea" "render_component :action => \"${index}\"\n" "render_component :action => \" ... \"" nil nil nil nil nil nil)
                       ("rcec" "render_component :controller => \"${items}\"\n" "render_component :controller => \" ... \"" nil nil nil nil nil nil)
                       ("rceca" "render_component :controller => \"${items}\", :action => \"${index}\"\n" "render_component :controller => \" ... \", :action => \" ... \"" nil nil nil nil nil nil)
                       ("rea" "redirect_to :action => \"${index}\"\n" "redirect_to :action => \" ... \"" nil nil nil nil nil nil)
                       ("reai" "redirect_to :action => \"${show}\", :id => ${@item}\n" "redirect_to :action => \" ... \", :id =>  ... " nil nil nil nil nil nil)
                       ("rec" "redirect_to :controller => \"${items}\"\n" "redirect_to :controller => \" ... \"" nil nil nil nil nil nil)
                       ("reca" "redirect_to :controller => \"${items}\", :action => \"${list}\"\n" "redirect_to :controller => \" ... \", :action => \" ... \"" nil nil nil nil nil nil)
                       ("recai" "redirect_to :controller => \"${items}\", :action => \"${show}\", :id => ${@item}\n" "redirect_to :controller => \" ... \", :action => \" ... \", :id =>  ... " nil nil nil nil nil nil)
                       ("rf" "render :file => \"${filepath}\"\n" "render :file => \" ... \"" nil nil nil nil nil nil)
                       ("rfu" "render :file => \"${filepath}\", :use_full_path => ${false}\n" "render :file => \" ... \", :use_full_path =>  ... " nil nil nil nil nil nil)
                       ("ri" "render :inline => \"${<%= 'hello' %>}\"\n" "render :inline => \" ... \"" nil nil nil nil nil nil)
                       ("ril" "render :inline => \"${<%= 'hello' %>}\", :locals => { ${name} => \"${value}\" }\n" "render :inline => \" ... \", :locals => {  ...  => \" ... \" }" nil nil nil nil nil nil)
                       ("rit" "render :inline => \"${<%= 'hello' %>}\", :type => :${rxml})\n" "render :inline => \" ... \", :type => : ... )" nil nil nil nil nil nil)
                       ("rl" "render :layout => \"${layoutname}\"\n" "render :layout => \" ... \"" nil nil nil nil nil nil)
                       ("rn" "render :nothing => ${true}\n" "render :nothing =>  ... " nil nil nil nil nil nil)
                       ("rns" "render :nothing => ${true}, :status => ${401}\n" "render :nothing =>  ... , :status =>  ... " nil nil nil nil nil nil)
                       ("rp" "render :partial => \"${item}\"\n" "render :partial => \" ... \"" nil nil nil nil nil nil)
                       ("rpc" "render :partial => \"${item}\", :collection => ${items}\n" "render :partial => \" ... \", :collection =>  ... " nil nil nil nil nil nil)
                       ("rpl" "render :partial => \"${item}\", :locals => { :${name} => \"${value}\"}\n" "render :partial => \" ... \", :locals => { : ...  => \" ... \"}" nil nil nil nil nil nil)
                       ("rpo" "render :partial => \"${item}\", :object => ${object}\n" "render :partial => \" ... \", :object =>  ... " nil nil nil nil nil nil)
                       ("rps" "render :partial => \"${item}\", :status => ${500}\n" "render :partial => \" ... \", :status =>  ... " nil nil nil nil nil nil)
                       ("rt" "render :text => \"${Text here...}\"\n" "render :text => \" ... \"" nil nil nil nil nil nil)
                       ("rtl" "render :text => \"${Text here...}\", :layout => \"${layoutname}\"\n" "render :text => \" ... \", :layout => \" ... \"" nil nil nil nil nil nil)
                       ("rtlt" "render :text => \"${Text here...}\", :layout => ${true}\n" "render :text => \" ... \", :layout =>  ... " nil nil nil nil nil nil)
                       ("rts" "render :text => \"${Text here...}\", :status => ${401}\n" "render :text => \" ... \", :status =>  ... " nil nil nil nil nil nil)
                       ("ses" "session[:${user}]\n" "session[: ... ]" nil nil nil nil nil nil)
                       ("va" "validates_associated :${attr}\n" "validates_associated : ... " nil nil nil nil nil nil)
                       ("vc" "validates_confirmation_of :${attr}\n" "validates_confirmation_of : ... " nil nil nil nil nil nil)
                       ("ve" "validates_exclusion_of :${attr}\n" "validates_exclusion_of : ... " nil nil nil nil nil nil)
                       ("vf" "validates_format_of :${attr}, :with => /${regex}/\n" "validates_format_of : ... , :with => / ... /" nil nil nil nil nil nil)
                       ("vn" "validates_numericality_of :${attr}\n" "validates_numericality_of : ... " nil nil nil nil nil nil)
                       ("vp" "validates_presence_of :${attr}\n" "validates_presence_of : ... " nil nil nil nil nil nil)
                       ("vu" "validates_uniqueness_of :${attr}\n" "validates_uniqueness_of : ... " nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ruby-mode
                     '(("all" "all? { |${e}| $0 }" "all? { |...| ... }" nil
                        ("collections")
                        nil nil nil nil)
                       ("any" "any? { |${e}| $0 }" "any? { |...| ... }" nil
                        ("collections")
                        nil nil nil nil)
                       ("classify" "classify { |${e}| $0 }" "classify { |...| ... }" nil
                        ("collections")
                        nil nil nil nil)
                       ("collect" "collect { |${e}| $0 }" "collect { |...| ... }" nil
                        ("collections")
                        nil nil nil nil)
                       ("deli" "delete_if { |${e} $0 }" "delete_if { |...| ... }" nil
                        ("collections")
                        nil nil nil nil)
                       ("det" "detect { |${e}| $0 }" "detect { |...| ... }" nil
                        ("collections")
                        nil nil nil nil)
                       ("ea" "each { |${e}| $0 }" "each { |...| ... }" nil
                        ("collections")
                        nil nil nil nil)
                       ("eac" "each_cons(${1:2}) { |${group}| $0 }" "each_cons(...) { |...| ... }" nil
                        ("collections")
                        nil nil nil nil)
                       ("ead" "each do |${e}|\n     $0\nend" "each do |...| ..." nil
                        ("collections")
                        nil nil nil nil)
                       ("eai" "each_index { |${i}| $0 }" "each_index { |i| ... }" nil
                        ("collections")
                        nil nil nil nil)
                       ("eav" "each_value { |${val}| $0 }" "each_value { |val| ... }" nil
                        ("collections")
                        nil nil nil nil)
                       ("eawi" "each_with_index { |${e}, ${i}| $0 }" "each_with_index { |e, i| ... }" nil
                        ("collections")
                        nil nil nil nil)
                       ("inject" "inject(${1:0}) { |${2:injection}, ${3:element}| $0 }" "inject(...) { |...| ... }" nil
                        ("collections")
                        nil nil nil nil)
                       ("reject" "reject { |${1:element}| $0 }" "reject { |...| ... }" nil
                        ("collections")
                        nil nil nil nil)
                       ("select" "select { |${1:element}| $0 }" "select { |...| ... }" nil
                        ("collections")
                        nil nil nil nil)
                       ("sort" "sort { |${x},${y}| $0 }" "sort do |...| ..." nil
                        ("collections")
                        nil nil nil nil)
                       ("zip" "zip(${enums}) { |${row}| $0 }" "zip(...) { |...| ... }" nil
                        ("collections")
                        nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ruby-mode
                     '(("forin" "for ${1:element} in ${2:collection}\n  $0\nend" "for ... in ...; ... end" nil
                        ("control structure")
                        nil nil nil nil)
                       ("if" "if ${1:condition}\n  $0\nend" "if ... end" nil
                        ("control structure")
                        nil nil nil nil)
                       ("ife" "if ${1:condition}\n  $2\nelse\n  $3\nend" "if ... else ... end" nil
                        ("control structure")
                        nil nil nil nil)
                       ("tim" "times { |${n}| $0 }" "times { |n| ... }" nil
                        ("control structure")
                        nil nil nil nil)
                       ("until" "until ${condition}\n  $0\nend" "until ... end" nil
                        ("control structure")
                        nil nil nil nil)
                       ("upt" "upto(${n}) { |${i}|\n  $0\n}" "upto(...) { |n| ... }" nil
                        ("control structure")
                        nil nil nil nil)
                       ("when" "when ${condition}\n  $0\nend" "when ... end" nil
                        ("control structure")
                        nil nil nil nil)
                       ("while" "while ${condition}\n  $0\nend" "while ... end" nil
                        ("control structure")
                        nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ruby-mode
                     '(("Comp" "include Comparable\n\ndef <=> other\n  $0\nend" "include Comparable; def <=> ... end" nil
                        ("definitions")
                        nil nil nil nil)
                       ("am" "alias_method :${new_name}, :${old_name}" "alias_method new, old" nil
                        ("definitions")
                        nil nil nil nil)
                       ("cla" "class << ${self}\n  $0\nend" "class << self ... end" nil
                        ("definitions")
                        nil nil nil nil)
                       ("cls" "class ${1:`(let ((fn (capitalize (file-name-nondirectory\n                                 (file-name-sans-extension\n				 (or (buffer-file-name)\n				     (buffer-name (current-buffer))))))))\n           (cond\n             ((string-match \"_\" fn) (replace-match \"\" nil nil fn))\n              (t fn)))`}\n  $0\nend" "class ... end" nil
                        ("definitions")
                        nil nil nil nil)
                       ("mm" "def method_missing(method, *args)\n  $0\nend" "def method_missing ... end" nil
                        ("definitions")
                        nil nil nil nil)
                       ("mod" "module ${1:`(let ((fn (capitalize (file-name-nondirectory\n                                 (file-name-sans-extension\n         (or (buffer-file-name)\n             (buffer-name (current-buffer))))))))\n           (cond\n             ((string-match \"_\" fn) (replace-match \"\" nil nil fn))\n              (t fn)))`}\n  $0\nend" "module ... end" nil
                        ("definitions")
                        nil nil nil nil)
                       ("r" "attr_reader :" "attr_reader ..." nil
                        ("definitions")
                        nil nil nil nil)
                       ("rw" "attr_accessor :" "attr_accessor ..." nil
                        ("definitions")
                        nil nil nil nil)
                       ("w" "attr_writer :" "attr_writer ..." nil
                        ("definitions")
                        nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ruby-mode
                     '(("#" "# => " "# =>" nil
                        ("general")
                        nil nil nil nil)
                       ("=b" "=begin rdoc\n  $0\n=end" "=begin rdoc ... =end" nil
                        ("general")
                        nil nil nil nil)
                       ("app" "if __FILE__ == $PROGRAM_NAME\n  $0\nend" "if __FILE__ == $PROGRAM_NAME ... end" nil
                        ("general")
                        nil nil nil nil)
                       ("bm" "Benchmark.bmbm(${1:10}) do |x|\n  $0\nend" "Benchmark.bmbm(...) do ... end" nil
                        ("general")
                        nil nil nil nil)
                       ("case" "case ${1:object}\nwhen ${2:condition}\n  $0\nend" "case ... end" nil
                        ("general")
                        nil nil nil nil)
                       ("dee" "Marshal.load(Marshal.dump($0))" "deep_copy(...)" nil
                        ("general")
                        nil nil nil nil)
                       ("def" "def ${e}\n    $0\nend" "define" nil
                        ("general")
                        nil nil nil nil)
                       ("rb" "#!/usr/bin/ruby -wKU" "/usr/bin/ruby -wKU" nil
                        ("general")
                        nil nil nil nil)
                       ("req" "require \"$0\"" "require \"...\"" nil
                        ("general")
                        nil nil nil nil)
                       ("rreq" "require File.join(File.dirname(__FILE__), $0)" "require File.join(File.dirname(__FILE__), ...)" nil
                        ("general")
                        nil nil nil nil)
                       ("y" ":yields: $0" ":yields: arguments (rdoc)" nil
                        ("general")
                        nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'ruby-mode
                     '(("aft" "after(${1::each}) do\n  $0\nend" "after" nil
                        ("rspec")
                        nil nil nil nil)
                       ("annot" "any_number_of_times" "any_number_of_times" nil
                        ("rspec")
                        nil nil nil nil)
                       ("anr" "and_raise(${1:exception})" "and_raise" nil
                        ("rspec")
                        nil nil nil nil)
                       ("anra" "and_return(${1:value})" "and_return with args" nil
                        ("rspec")
                        nil nil nil nil)
                       ("anrb" "and_return { $1 }" "and_return with block" nil
                        ("rspec")
                        nil nil nil nil)
                       ("ant" "and_throw(${1:sym})" "and_throw" nil
                        ("rspec")
                        nil nil nil nil)
                       ("any" "any? { |${e}| $0 }" "any? { |...| ... }" nil
                        ("rspec")
                        nil nil nil nil)
                       ("atl" "at_least(${1:n}).times" "at_least" nil
                        ("rspec")
                        nil nil nil nil)
                       ("atm" "at_most(${1:n}).times" "at_most" nil
                        ("rspec")
                        nil nil nil nil)
                       ("bef" "before(${1::each}) do\n  $0\nend" "before" nil
                        ("rspec")
                        nil nil nil nil)
                       ("conn" "controller_name :${1:controller}" "controller_name" nil
                        ("rspec")
                        nil nil nil nil)
                       ("des" "describe '${1:description}' do\n\n  it 'should ${2:description}' do\n    $0\n  end\n\nend" "describe (String)" nil
                        ("rspec")
                        nil nil nil nil)
                       ("desc" "require File.dirname(__FILE__) + '/../spec_helper'\n\ndescribe ${1:controller} do\n\n  $0\n\nend" "describe (Controller)" nil
                        ("rspec")
                        nil nil nil nil)
                       ("desg" "describe '${1:description}', :given => '${2:a}' do\n\n  it 'should ${3:description}' do\n    $0\n  end\n\nend" "describe (String)" nil
                        ("rspec")
                        nil nil nil nil)
                       ("desrc.delete" "require File.direname(__FILE__) + '/.../spec_helper'\n\ndescribe ${1:controller}, 'DELETE ${3:/some/path}${4: with some parameters}' do\n\n  $0\n\nend" "describe (RESTful Controller): DELETE" nil
                        ("rspec")
                        nil nil nil nil)
                       ("desrc.get" "require File.direname(__FILE__) + '/.../spec_helper'\n\ndescribe ${1:controller}, 'GET ${3:/some/path}${4: with some parameters}' do\n\n  $0\n\nend" "describe (RESTful Controller): GET" nil
                        ("rspec")
                        nil nil nil nil)
                       ("desrc.post" "require File.direname(__FILE__) + '/.../spec_helper'\n\ndescribe ${1:controller}, 'POST ${3:/some/path}${4: with some parameters}' do\n\n  $0\n\nend" "describe (RESTful Controller): POST" nil
                        ("rspec")
                        nil nil nil nil)
                       ("desrc.put" "require File.direname(__FILE__) + '/.../spec_helper'\n\ndescribe ${1:controller}, 'PUT ${3:/some/path}${4: with some parameters}' do\n\n  $0\n\nend" "describe (RESTful Controller): PUT" nil
                        ("rspec")
                        nil nil nil nil)
                       ("dest" "describe ${1:Type} do\n\n  it 'should ${2:description}' do\n    $0\n  end\n\nend" "describe (type)" nil
                        ("rspec")
                        nil nil nil nil)
                       ("dests" "describe ${1:Type}, '${2:description}' do\n\n  it 'should ${3:description}' do\n    $0\n  end\n\nend" "describe (type, string)" nil
                        ("rspec")
                        nil nil nil nil)
                       ("ex" "exactly(${1:n}).times" "exactly" nil
                        ("rspec")
                        nil nil nil nil)
                       ("fm" "${1:var} = flexmock('${2:mock_name}')\n$0" "flexmock mock object w/name" nil
                        ("rspec")
                        nil nil nil nil)
                       ("fmar" "${1:var} = flexmock(:model, ${2:YourModel})\n$0" "flexmock mock object, ActiveRecord" nil
                        ("rspec")
                        nil nil nil nil)
                       ("it" "it 'should ${1:description}' do\n  $0\nend" "it" nil
                        ("rspec")
                        nil nil nil nil)
                       ("mat" "class ${1:ReverseTo}\n  def initialize($3)\n    @$3 = $3\n  end\n\n  def matches?(actual)\n    @actual = actual\n    # Satisfy expectation here. Return false or raise an error if it's not met.\n    $0@actual.reverse.should == @$3\n    true\n  end\n\n  def failure_message\n    \"expected #{@actual.inspect} to $2 #{@$3.inspect}, but it didn't\"\n  end\n\n  def negative_failure_message\n    \"expected #{@actual.inspect} not to $2 #{@$3.inspect}, but it did\"\n  end\nend\n\ndef ${2:reverse_to}(${3:expected})\n  $1.new($3)\nend" "custom matcher" nil
                        ("rspec")
                        nil nil nil nil)
                       ("mocw.flexmock" "Spec::Runner.configure do |config|\n  config.mock_with :flexmock\nend" "mock_with flexmock" nil
                        ("rspec")
                        nil nil nil nil)
                       ("mocw.mocha" "Spec::Runner.configure do |config|\n  config.mock_with :mocha\nend" "mock_with mocha" nil
                        ("rspec")
                        nil nil nil nil)
                       ("mocw.rr" "Spec::Runner.configure do |config|\n  config.mock_with :rr\nend" "mock_with rr" nil
                        ("rspec")
                        nil nil nil nil)
                       ("on" "once" "once" nil
                        ("rspec")
                        nil nil nil nil)
                       ("resh" "require File.dirname(__FILE__) + '/../spec_helper'" "Require spec_helper" nil
                        ("rspec")
                        nil nil nil nil)
                       ("sce" "Scenario '${1:title}' do\n  Given '${2:given}'\n  When '${3:when}'\n  Then '${4:then}'\nend\n$0" "Scenario" nil
                        ("rspec")
                        nil nil nil nil)
                       ("sh=" "${1:target}.should == ${2:value}\n$0" "should ==" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shb" "${1:target}.should be(${2:result})\n$0" "should be" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shbc" "${1:target}.should be_close(${2:result}, ${3:tolerance})\n$0" "should be_close" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shbio" "${1:target}.should be_instance_of(${2:klass})\n$0" "should be_instance_of" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shbko" "${1:target}.should be_a_kind_of(${2:klass})\n$0" "should be_kind_of" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shbr" "response.should be_redirect\n$0" "should be_redirect" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shbs" "response.should be_success\n$0" "should be_success" nil
                        ("rspec")
                        nil nil nil nil)
                       ("she.eql" "${1:target}.should eql(${2:value})\n$0" "should eql" nil
                        ("rspec")
                        nil nil nil nil)
                       ("she.equal" "${1:target}.should equal(${2:value})\n$0" "should equal" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shh" "${1:target}.should have(${2:num}).${3:things}\n$0" "should have" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shhal" "${1:target}.should have_at_least(${2:num}).${3:things}\n$0" "should have_at_least" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shham" "${1:target}.should have_at_most(${2:num}).${3:things}\n$0" "should have_at_most" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shhr" "${1:target}.should have(${2:x}).records\n$0" "should have_records" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shm.match" "${1:target}.should match(/${2:regex}/)\n$0" "should match" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shn=" "${1:target}.should_not == ${2:value}\n$0" "should_not ==" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shnb" "${1:target}.should_not be(${2:result})\n$0" "should_not be" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shnbc" "${1:target}.should_not be_close(${2:result}, ${3:tolerance})\n$0" "should_not be_close" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shnbio" "${1:target}.should_not be_instance_of(${2:klass})\n$0" "should_not be_instance_of" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shnbko" "${1:target}.should_not be_a_kind_of(${2:klass})\n$0" "should_not be_kind_of" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shnbr" "response.should_not be_redirect\n$0" "should_not be_redirect" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shnbs" "response.should_not be_success\n$0" "should_not be_success" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shne.eql" "${1:target}.should_not eql(${2:value})\n$0" "should_not eql" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shne.equal" "${1:target}.should_not equal(${2:value})\n$0" "should_not equal" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shnm.match" "${1:target}.should_not match(/${2:regex}/)\n$0" "should_not match" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shnp" "${1:target}.should_not ${2:be_}${3:predicate} $0" "should_not predicate" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shnr" "${1:mock}.should_not_receive(:${2:message})$0" "should_not_receive" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shnre" "lambda { ${1: } }.should_not raise_error(${2:error})\n$0" "should_not raise_error" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shnrt" "${1:target}.should_not respond_to(:${2:sym})\n$0" "should_not respond_to" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shns" "${1:target}.should_not satisfy { |obj| ${2: } }\n$0" "should_not satisfy" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shnt" "lambda { ${1: } }.should_not throw_symbol(:${2:symbol})\n$0" "should_not throw" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shp" "${1:target}.should ${2:be_}${3:predicate} $0" "should predicate" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shr" "${1:mock}.should_receive(:${2:message})$0" "should_receive" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shre" "lambda { ${1: } }.should raise_error(${2:error})\n$0" "should raise_error" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shrt.redirect" "response.should redirect_to(${1:url})\n$0" "should redirect_to" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shrt.render" "response.should render_template(:${1:template})\n$0" "should render_template" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shrt.respond" "${1:target}.should respond_to(:${2:sym})\n$0" "should respond_to" nil
                        ("rspec")
                        nil nil nil nil)
                       ("shs" "${1:target}.should satisfy { |obj| ${2: } }\n$0" "should satisfy" nil
                        ("rspec")
                        nil nil nil nil)
                       ("sht" "lambda { ${1: } }.should throw_symbol(:${2:symbol})\n$0" "should throw" nil
                        ("rspec")
                        nil nil nil nil)
                       ("sto" "Story '${1:title}', %{\n  As a ${2:role}\n  I want ${3:feature}\n  So that ${4:value}\n} do\nend" "Story" nil
                        ("rspec")
                        nil nil nil nil)
                       ("tw" "twice" "twice" nil
                        ("rspec")
                        nil nil nil nil)
                       ("wia" "with(${1:args})\n$0" "with args" nil
                        ("rspec")
                        nil nil nil nil)))


;;; Do not edit! File generated at Sun Nov 17 13:59:55 2013
