class Maestrano::Rails::SamlBaseController < ApplicationController
  attr_reader :saml_response, :user_auth_hash, :group_auth_hash, :user_group_rel_hash
  protect_from_forgery :except => [:consume]
  around_filter :saml_response_transaction, only: [:consume]
  
  # Initialize the SAML request and redirects the
  # user to Maestrano
  def init
    redirect_to Maestrano::Saml::Request.new(params,session).redirect_url
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
        logger.error e
        redirect_to "#{Maestrano::SSO.unauthorized_url}?err=internal"
      end
    end
  end
  
  def process_saml_response
    if params[:SAMLResponse]
      @saml_response = Maestrano::Saml::Response.new(params[:SAMLResponse])
      if @saml_response.validate!
        @user_auth_hash = Maestrano::SSO::BaseUser.new(@saml_response).to_hash
        @group_auth_hash = Maestrano::SSO::BaseGroup.new(@saml_response).to_hash
        @user_group_rel_hash = Maestrano::SSO::BaseMembership.new(@saml_response).to_hash
      end
    end
  end
end