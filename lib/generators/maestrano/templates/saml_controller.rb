class Maestrano::Auth::SamlController < Maestrano::Rails::SamlBaseController
  
  # == GET '/maestrano/auth/saml/init'
  # == Action automatically handled by parent controller
  # Initialize the SAML request and redirects the
  # user to Maestrano.
  # def init
  #   redirect_to Maestrano::Saml::Request.new(params,session).redirect_url
  # end
  
  def consume
  end
end