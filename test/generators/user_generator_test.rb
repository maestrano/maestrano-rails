require 'test_helper'

class UserGeneratorTest < Rails::Generators::TestCase
  tests Maestrano::Generators::UserGenerator
  destination File.expand_path("../../tmp", __FILE__)
  setup :prepare_destination
  
  should "call the active_record migration initializer" do
    run_generator %w(monster --orm=active_record)
    assert_migration "db/migrate/add_maestrano_to_monsters.rb", /def self.up/
  end
end