module Maestrano
  module Generators
    module OrmHelpers
      
      def model_contents
        
        if model_type == 'user'
          buffer = <<-CONTENT
  # Enable Maestrano for this user
  maestrano_user_via :provider, :uid do |user,maestrano|
    user.name = maestrano.first_name
    user.surname = maestrano.last_name
    user.email = maestrano.email
    
    # user.country_alpha2 = maestrano.country
    # user.some_required_field = 'some-appropriate-default-value'
  end

CONTENT
        else
          buffer = <<-CONTENT
  # Enable Maestrano for this group
  maestrano_group_via :provider, :uid do |group, maestrano|
    group.name = (maestrano.company_name || "Default Group name")
    # group.principal_email = maestrano.email
    # group.city = maestrano.city
    # group.olson_tz = maestrano.timezone
    # group.country_alpha2 = maestrano.country
    # group.currency_code = maestrano.currency
    # group.some_required_field = 'some-appropriate-default-value'
  end

CONTENT
        end
        
        buffer += <<-CONTENT if needs_attr_accessible?
  # Setup protected attributes for your model
  attr_protected :provider, :uid

CONTENT
        buffer
      end
      
      def model_type
        self.class.name.split("::").last.gsub("Maestrano","").gsub("Generator","").downcase
      end
      
      def needs_attr_accessible?
        rails_3? && !strong_parameters_enabled?
      end

      def rails_3?
        ::Rails::VERSION::MAJOR == 3
      end

      def strong_parameters_enabled?
        defined?(ActionController::StrongParameters)
      end
      
      private
        def model_exists?
          File.exists?(File.join(destination_root, model_path))
        end

        def migration_exists?(table_name)
          Dir.glob("#{File.join(destination_root, migration_path)}/[0-9]*_*.rb").grep(/\d+_add_maestrano_to_#{table_name}.rb$/).first
        end

        def migration_path
          @migration_path ||= File.join("db", "migrate")
        end

        def model_path
          @model_path ||= File.join("app", "models", "#{file_path}.rb")
        end
    end
  end
end