require 'test_helper'

class InstallGeneratorTest < Rails::Generators::TestCase
  tests Maestrano::Generators::InstallGenerator
  destination File.expand_path("../../tmp", __FILE__)
  
  setup do
    prepare_destination
    copy_routes
  end
  
  should "create the maestrano initializer" do
    run_generator
    assert_file "config/initializers/maestrano.rb"
  end
  
  should "create the maestrano/auth/saml controller" do
    run_generator
    assert_file "app/controllers/maestrano/auth/saml_controller.rb"
  end
  
  should "create the maestrano routes" do
    
    run_generator
    match = /maestrano_routes/
    assert_file "config/routes.rb", match
  end
  
  def copy_routes
    routes = File.expand_path("../../test_files/config/routes.rb", __FILE__)
    destination = File.join(destination_root, "config")

    FileUtils.mkdir_p(destination)
    FileUtils.cp routes, destination
  end
end