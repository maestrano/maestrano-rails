class Maestrano::Rails::SamlBaseController < ApplicationController
  attr_reader :saml_response, :user_auth_hash, :group_auth_hash, :user_group_rel_hash
  protect_from_forgery :except => [:consume]
  around_filter :saml_response_transaction, only: [:consume]

  # GET /maestrano/auth/saml/init/:tenant
  #
  # Initialize the SAML request and redirects the user to Maestrano
  def init
    redirect_to Maestrano::Saml::Request[params[:tenant]].new(params, session).redirect_url
  end

  #===================================
  # Helper methods
  #===================================
  def saml_response_transaction
    begin
      process_saml_response
      yield
      Maestrano::SSO.set_session(session,@user_auth_hash)
    rescue Exception => e
      if Rails.env.development?
        raise
      else
        logger.error "Cannot validate SAML response: #{e.message}"
        logger.debug "Trace: #{e.backtrace}"
        redirect_to "#{Maestrano::SSO.unauthorized_url}?err=internal"
      end
    end
  end

  def process_saml_response
    if params[:SAMLResponse]
      @saml_response = Maestrano::Saml::Response[params[:tenant]].new(params[:SAMLResponse])
      if @saml_response.validate!
        @user_auth_hash = Maestrano::SSO::BaseUser[params[:tenant]].new(@saml_response).to_hash
        @group_auth_hash = Maestrano::SSO::BaseGroup.new(@saml_response).to_hash
        @user_group_rel_hash = Maestrano::SSO::BaseMembership.new(@saml_response).to_hash
      end
    end
  end
end
