require 'rubygems'
require 'rake'
require 'rdoc'
require 'date'
require 'yaml'
require 'jekyll'

desc "Generate blog files"
task :generate do
  Jekyll::Site.new(Jekyll.configuration({
    "source"      => ".",
    "destination" => "_site"
  })).process
end

desc "Generate and publish blog to gh-pages"
task :publish => [:generate] do
  Dir.mktmpdir do
    system "TEMP=`mktemp -dt`"
    system "cp -r _site/* $TEMP"
    system "git checkout -B gh-pages"
    system "rm -rf *"
    system "mv $TEMP/* ."
    message = "Site updated at #{Time.now.utc}"
    system "git add -A ."
    system "git commit -a -m #{message.shellescape}"
    system "git push silshack gh-pages --force"
    system "git checkout master"
    system "echo yolo"
  end
end

task :default => :publish
