module Maestrano
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)
      desc "Creates a Maestrano initializer, a migration and create a customizable controller for SAML Single Sign-On"
      
      def copy_initializer
        template "maestrano.rb", "config/initializers/maestrano.rb"
      end
      
      def copy_saml_controller
        template "saml_controller.rb", "app/controllers/maestrano/auth/saml_controller.rb"
      end
    end
  end
end