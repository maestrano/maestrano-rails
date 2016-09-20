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
          if Maestrano[session_preset].param(:sso_enabled)
            unless controller_name == 'saml' && ['init','consume'].include?(action_name)
              if !Maestrano::SSO::Session[session_preset].new(session).valid?(if_session:true)
                redirect_to Maestrano::SSO[session_preset].init_url
              end
            end
          end
          true
        end

        def session_preset
          @session_preset ||= begin
            mno_session = (self.session[:maestrano] || self.session['maestrano'])
            if mno_session
              decrypted_session = JSON.parse(Base64.decode64(mno_session))
              decrypted_session['preset']
            else
              nil
            end
          end
        end
      end
    end
  end
end
