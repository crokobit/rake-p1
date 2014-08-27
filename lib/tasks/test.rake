task :default => :html_md
task :html_md => %W[ch1.html ch2.html ch3.html]

rule ".html" => ".md" do |task|
  sh "cp #{task.source} #{task.name}"
end

  #system -> command -> not show when executed
  #sh -> command ->  show
