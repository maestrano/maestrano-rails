class Maestrano::Rails::SamlBaseController < ApplicationController
  attr_reader :saml_response, :user_auth_hash, :group_auth_hash
  before_filter :process_saml_response, only: [:consume]
  
  # Initialize the SAML request and redirects the
  # user to Maestrano
  def init
    redirect_to Maestrano::Saml::Request.new(params,session).redirect_url
  end
  
  #===================================
  # Helper methods
  #===================================
  def process_saml_response
    if params[:SAMLResponse]
      @saml_response = Maestrano::Saml::Response.new(params[:SAMLResponse])
      if @saml_response.is_valid?
        @user_auth_hash = Maestrano::SSO::BaseUser.new(@saml_response).to_hash
        @group_auth_hash = Maestrano::SSO::BaseGroup.new(@saml_response).to_hash
      end
    end
  end
end