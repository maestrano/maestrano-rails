class Maestrano::Rails::MetadataController < Maestrano::Rails::WebHookController

  # GET /maestrano/metadata
  # Return the Maestrano configuration for this application
  def index
    render json: Maestrano.to_metadata
  end
end