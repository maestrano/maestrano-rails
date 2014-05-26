require 'rails/generators/named_base'
require 'generators/maestrano/orm_helpers'

module Mongoid
  module Generators
    class MaestranoGroupGenerator < Rails::Generators::NamedBase
      include Maestrano::Generators::OrmHelpers
      
      def inject_field_types
        inject_into_file model_path, migration_data, after: "include Mongoid::Document\n" if model_exists?
      end

      def inject_maestrano_content
        inject_into_file model_path, model_contents, after: "include Mongoid::Document\n" if model_exists?
      end
      
      def migration_data
<<RUBY
  ## User source identification fields
  field :provider,  type: String, default: ""
  field :uid,       type: String, default: ""
RUBY
      end
    end
  end
end