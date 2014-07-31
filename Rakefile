#!/usr/bin/env rake
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end
begin
  require 'rdoc/task'
rescue LoadError
  require 'rdoc/rdoc'
  require 'rake/rdoctask'
  RDoc::Task = Rake::RDocTask
end

RDoc::Task.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Maestrano-rails'
  rdoc.options << '--line-numbers'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = false
end

require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name = "maestrano-rails"
  gem.homepage = "https://maestrano.com"
  gem.license = "MIT"
  gem.summary = "Rails plugin for Maestrano API"
  gem.description = "Maestrano is the next generation marketplace for SME applications. See https://maestrano.com for details."
  
  gem.email = ["arnaud.lachaume@maestrano.com"]
  gem.authors = ["Arnaud Lachaume"]

  gem.files = FileList['app/**/*.rb', 'lib/**/*.rb', 'Gemfile*', 'LICENSE', 'README.md', 'Rakefile', 'maestrano-rails.gemspec']
  gem.test_files = FileList['test/**/*']
end
Jeweler::RubygemsDotOrgTasks.new


task :default => :test