%W[ch1.md ch2.md ch3.md].each do |md_file|
  html_file = File.basename(md_file, ".md") + ".html"
  system("cp #{md_file} #{html_file}")
end
