task :default => :html
task :html_md => %W[ch1.html ch2.html ch3.html]

%W[ch1.md ch2.md ch3.md].each do |md_file|
  html_file = File.basename(md_file, ".md") + ".html"
  file html_file => md_file do 
    sh("cp #{md_file} #{html_file}")
  end
  #system -> command -> not show when executed
  #sh -> command ->  show
end
