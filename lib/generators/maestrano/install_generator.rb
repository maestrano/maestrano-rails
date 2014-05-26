module Maestrano
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)
      desc "Creates a Maestrano initializer and a customizable controller for SAML Single Sign-On"
      
      def copy_initializer
        template "maestrano.rb", "config/initializers/maestrano.rb"
      end
      
      def copy_saml_controller
        template "saml_controller.rb", "app/controllers/maestrano/auth/saml_controller.rb"
      end
      
      def add_maestrano_routes
        maestrano_routes = <<-CONTENT
namespace :maestrano do
    namespace :auth do
      resources :saml, only:[] do
        get 'init', on: :collection
        post 'consume', on: :collection
      end
    end
  end
CONTENT
        route maestrano_routes
      end
    end
  end
end