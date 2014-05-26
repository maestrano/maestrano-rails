$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "maestrano/rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "maestrano-rails"
  s.version     = Maestrano::Rails::VERSION
  s.authors     = ["Arnaud Lachaume"]
  s.email       = ["arnaud.lachaume@maestrano.com"]
  s.homepage    = 'https://maestrano.com'
  s.summary     = 'Rails plugin for Maestrano API'
  s.description = 'Maestrano is the next generation marketplace for SME applications. See https://maestrano.com for details.'

  s.files = Dir["{app,config,db,lib}/**/*"] + ["LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.3"
  s.add_dependency "maestrano", "~> 0.1"
  
  s.add_development_dependency('test-unit', '~> 2')
  s.add_development_dependency('mocha', '~> 0.13')
  s.add_development_dependency('shoulda', '~> 2.11')

  s.add_development_dependency "sqlite3"
end
