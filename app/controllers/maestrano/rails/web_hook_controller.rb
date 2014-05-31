class Maestrano::Rails::WebHookController < ApplicationController
  before_filter :authenticate_maestrano!
  
  private
    def authenticate_maestrano!
      authorized = false
      authenticate_with_http_basic do |app_id, api_token|
        authorized = Maestrano.authenticate(app_id,api_token)
      end
      unless authorized
        render json: {error: 'Invalid credentials' }, status: :unauthorized
      end
      return true
    end
end