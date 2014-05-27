module Maestrano
  module Rails
    module MaestranoGroupVia
      extend ActiveSupport::Concern
 
      included do
      end

      module ClassMethods
        def maestrano_group_via(provider_field,uid_field)
          cattr_accessor :maestrano_options
          self.maestrano_options = {
            provider: provider_field.to_s,
            uid: uid_field.to_s
          }
          
          include Maestrano::Rails::MaestranoUserVia::LocalInstanceMethods
        end
      end
      
      module LocalInstanceMethods
        def maestrano?
          send(self.maestrano_options[:provider]) == 'maestrano' &&
          !send(self.maestrano_options[:uid]).blank?
        end
      end
    end
  end
end

ActiveRecord::Base.send :include, Maestrano::Rails::MaestranoGroupVia