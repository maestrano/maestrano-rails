# Configure Rails Environment
ENV["RAILS_ENV"] = "test"
TEST_ORM = (ENV["TEST_ORM"] || :active_record).to_sym

require File.expand_path("../dummy/config/environment.rb",  __FILE__)
require "rails/test_help"
require "shoulda"
require "mocha"

Rails.backtrace_cleaner.remove_silencers!

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

# Load fixtures from the engine
if ActiveSupport::TestCase.method_defined?(:fixture_path=)
  ActiveSupport::TestCase.fixture_path = File.expand_path("../fixtures", __FILE__)
end

# For generators
require "rails/generators/test_case"
require "generators/maestrano/install_generator"
require "generators/maestrano/user_generator"
