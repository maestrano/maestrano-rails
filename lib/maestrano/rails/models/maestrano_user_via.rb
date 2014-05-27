module Maestrano
  module Rails
    module MaestranoUserVia
      extend ActiveSupport::Concern
 
      included do
      end

      module ClassMethods
        def maestrano_user_via(provider_field,uid_field, &block)
          cattr_accessor :maestrano_options
          self.maestrano_options = {
            provider: provider_field.to_s,
            uid: uid_field.to_s,
            mapping: block
          }
          
          include Maestrano::Rails::MaestranoUserVia::LocalInstanceMethods
        end
        
        def find_or_create_for_maestrano(auth_hash)
          # Look for the entity first
          entity = self.where(
            self.maestrano_options[:provider].to_sym => auth_hash[:provider],
            self.maestrano_options[:uid].to_sym => auth_hash[:uid],
          ).first
          
          # Create it otherwise
          unless entity
            # Extract maestrano information into proper objects
            info = OpenStruct.new(auth_hash[:info])
            extra = OpenStruct.new(auth_hash[:extra])
            
            # Create entity and call mapping block
            entity = self.new
            self.maestrano_options[:mapping].call(entity,info,extra)
            
            # Finally set provider and uid then save
            entity.send("#{self.maestrano_options[:provider]}=",auth_hash[:provider])
            entity.send("#{self.maestrano_options[:uid]}=",auth_hash[:uid])
            entity.save!
          end
          
          return entity
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

ActiveRecord::Base.send :include, Maestrano::Rails::MaestranoUserVia