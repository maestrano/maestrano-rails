# Configure Rails Environment
require 'simplecov'
SimpleCov.start

ENV["RAILS_ENV"] = "test"
TEST_ORM = (ENV["TEST_ORM"] || :active_record).to_sym

if TEST_ORM == :mongoid
  require 'mongoid'
  require File.expand_path("../dummy_mongoid/config/environment.rb",  __FILE__)
else
  require File.expand_path("../dummy_activerecord/config/environment.rb",  __FILE__)
end
require "rails/test_help"
require "shoulda"
require "mocha/setup"
require "database_cleaner"

Rails.backtrace_cleaner.remove_silencers!

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

# Load fixtures from the engine
if ActiveSupport::TestCase.method_defined?(:fixture_path=)
  ActiveSupport::TestCase.fixture_path = File.expand_path("../fixtures", __FILE__)
end

# Configure database cleaning
DatabaseCleaner.strategy = (TEST_ORM == :mongoid ? :truncation : :transaction)
class ActiveSupport::TestCase
  # Stop ActiveRecord from wrapping tests in transactions
  if TEST_ORM == :active_record
    self.use_transactional_fixtures = false
  end

  setup { DatabaseCleaner.start }
  teardown { DatabaseCleaner.clean }
end

# For generators
require "rails/generators/test_case"
require "generators/maestrano/install_generator"
require "generators/maestrano/user_generator"
require "generators/maestrano/group_generator"

Maestrano.configure do |config|
  config.environment = 'test'
  config.api.id = 'id'
  config.api.key = 'key'
  config.api.host = 'host'
  config.sso_enabled = true
  config.sso.slo_enabled = true
end
