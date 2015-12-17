module Maestrano
  module Generators
    class InitializerGenerator < ::Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)
      desc "Creates a Maestrano initializer and a customizable controller for SAML Single Sign-On"

      def copy_initializer
        template "maestrano.rb", "config/initializers/maestrano.rb"
      end
    end
  end
end