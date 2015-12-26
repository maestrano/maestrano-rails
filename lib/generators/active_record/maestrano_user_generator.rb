require 'rails/generators/active_record'
require 'generators/maestrano/orm_helpers'

module ActiveRecord
  module Generators
    class MaestranoUserGenerator < ActiveRecord::Generators::Base
      include Maestrano::Generators::OrmHelpers
      source_root File.expand_path("../templates", __FILE__)
      
      def copy_maestrano_migration
        migration_template "migration.rb", "db/migrate/add_maestrano_to_#{table_name}.rb"
      end
      
      def inject_maestrano_content
        content = model_contents

        class_path = if namespaced?
          class_name.to_s.split("::")
        else
          [class_name]
        end

        indent_depth = class_path.size - 1
        content = content.split("\n").map { |line| "  " * indent_depth + line } .join("\n") << "\n"

        inject_into_class(model_path, class_path.last, content) if model_exists?
      end
      
      def migration_data
<<RUBY
      ## User source identification fields
      t.string :provider
      t.string :uid
      t.string :tenant
RUBY
      end
    end
  end
end