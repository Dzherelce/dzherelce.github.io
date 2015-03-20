REMOTE="origin"
SOURCE_BRANCH="source"
PUBLISH_BRANCH="master"
DATE=Time.now.strftime("%y%m%d.%H%M")

desc "compile and publish the site to Github"
task :publish do
  sh "git checkout #{SOURCE_BRANCH}"
  comment = %x{ git log -n 1 --no-merges --format=%s%b }.chomp.strip
  # sh "bundle exec middleman build"
  sh "echo cd build && git add -A && git commit -m \"Publishing at #{DATE}: #{comment}\" && git push #{REMOTE} #{PUBLISH_BRANCH}"
  # sh "git push origin #{SOURCE_BRANCH}"
end
