class Maestrano::Rails::WebHookController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_filter :authenticate_maestrano!
  
  private
    def authenticate_maestrano!
      # Matches the credentials against the ones configured for the tenant preset
      authorized = authenticate_with_http_basic do |app_id, api_token|
        Maestrano[params[:tenant]].authenticate(app_id, api_token)
      end
      unless authorized
        render json: {error: 'Invalid credentials' }, status: :unauthorized
      end
      return true
    end
end