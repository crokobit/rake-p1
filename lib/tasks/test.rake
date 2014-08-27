%W[ch1.md ch2.md ch3.md].each do |md_file|
  html_file = File.basename(md_file, ".md") + ".html"
  file html_file => md_file do 
    system("cp #{md_file} #{html_file}")
  end
end
