source "https://rubygems.org"

gem 'rails'
gem 'jquery-rails'
gem 'haml-rails'
gem 'mongoid', require: false

gem 'maestrano', '1.0.0.pre.RC2'

group :development, :test do
  gem 'sqlite3', :platforms => :ruby
  gem 'activerecord-jdbcsqlite3-adapter', github: 'jruby/activerecord-jdbc-adapter', branch: 'rails-5', :platforms => :jruby
end

group :development do
  gem 'jeweler'
end

group :test do
  gem 'test-unit', '~> 3'
  gem 'mocha', '~> 1.1'
  gem 'shoulda', '~> 3.5'
  gem 'activesupport', '~> 4.2'
  gem 'database_cleaner'
end

group :production do
  gem 'pg', :platforms => :ruby
  gem 'activerecord-jdbcpostgresql-adapter', github: 'jruby/activerecord-jdbc-adapter', branch: 'rails-5', :platforms => :jruby
end
