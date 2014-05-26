require 'test_helper'

class InstallGeneratorTest < Rails::Generators::TestCase
  tests Maestrano::Generators::InstallGenerator
  destination File.expand_path("../../tmp", __FILE__)
  setup :prepare_destination
  
  should "create the maestrano initializer" do
    run_generator
    assert_file "config/initializers/maestrano.rb"
  end
end