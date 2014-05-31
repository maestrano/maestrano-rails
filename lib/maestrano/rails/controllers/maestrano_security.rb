module Maestrano
  module Rails
    module MaestranoSecurity
      # This module aims at being included into ApplicationController
      # but we do not do until a maestrano_user_via is declared on
      # a model (no need to polute the app)
      # - 
      # See MaestranoAuthResource for details on how the inclusion
      # is done
      def self.included(base)
        base.send :include, ControllerFilters
        base.before_filter :verify_maestrano_session
      end
      
      module ControllerFilters
        # If a maestrano session is present then we check
        # its validity. If not valid anymore the filter
        # triggers a Maestrano SSO handshake
        def verify_maestrano_session
          if Maestrano.param(:sso_enabled)
            unless controller_name == 'saml' && ['init','consume'].include?(action_name)
              if session && session[:maestrano] && !Maestrano::SSO::Session.new(session).valid?
                redirect_to Maestrano::SSO.init_url
              end
            end
          end
          true
        end
      end
    end
  end
end