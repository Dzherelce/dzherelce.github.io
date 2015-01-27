desc "compile and publish the site to Github"
task :publish do
  sh "git checkout source"
  comment = %x{ git log -n 1 --no-merges --format=%s%b }.chomp.strip
  sh "bundle exec middleman build"
  sh "cd build && git add -A && git commit -m \"Publishing at $(date): #{comment}\" && git push origin master"
end
