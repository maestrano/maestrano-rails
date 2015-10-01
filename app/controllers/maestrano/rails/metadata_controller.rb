class Maestrano::Rails::MetadataController < Maestrano::Rails::WebHookController

  # GET /maestrano/metadata
  # GET /maestrano/metadata/:tenant
  #
  # Return the Maestrano configuration for this application
  def index
    render json: Maestrano[params[:tenant]].to_metadata
  end
end