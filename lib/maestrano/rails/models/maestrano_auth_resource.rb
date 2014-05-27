module Maestrano
  module Rails
    module MaestranoAuthResource
      extend ActiveSupport::Concern
 
      included do
      end
      
      # These methods are used to extend the
      # behaviour of a model
      module ClassMethods
        # Configure a user model with mapping to SSO fields
        # and add user behaviour
        def maestrano_user_via(provider_field,uid_field, &block)
          extend Maestrano::Rails::MaestranoAuthResource::LocalClassGenericMethods
          self.maestrano_generic_configurator(provider_field,uid_field, &block)
          
          include Maestrano::Rails::MaestranoAuthResource::LocalInstanceUserMethods
        end
        
        # Configure a group model with mapping to SSO fields
        # and add group behaviour
        def maestrano_group_via(provider_field,uid_field, &block)
          extend Maestrano::Rails::MaestranoAuthResource::LocalClassGenericMethods
          self.maestrano_generic_configurator(provider_field,uid_field, &block)
          
          include Maestrano::Rails::MaestranoAuthResource::LocalInstanceGroupMethods
        end
      end
      
      # Actual class methods - injected after behaviour 
      # has been added (don't polute the model scope)
      module LocalClassGenericMethods
        def maestrano_generic_configurator(provider_field,uid_field, &block)
          cattr_accessor :maestrano_options
          self.maestrano_options = {
            provider: provider_field.to_s,
            uid: uid_field.to_s,
            mapping: block
          }
          
          include Maestrano::Rails::MaestranoAuthResource::LocalInstanceGenericMethods
        end
        
        # Find the resource based on provider and uid fields or create
        # it using the mapping block defined at the model level
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
      
      # Generic Instance behaviour
      module LocalInstanceGenericMethods
        def maestrano?
          send(self.maestrano_options[:provider]) == 'maestrano' &&
          !send(self.maestrano_options[:uid]).blank?
        end
      end
      
      module LocalInstanceUserMethods
      end
      
      module LocalInstanceGroupMethods
      end
    end
  end
end

ActiveRecord::Base.send :include, Maestrano::Rails::MaestranoAuthResource