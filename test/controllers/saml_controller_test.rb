require 'test_helper'

class SamlBaseControllerTest < ActionController::TestCase
  tests Maestrano::Auth::SamlController
  
  context "init phase" do
    should "create a saml request using params and session and redirect the user" do
      r = mock('saml_request_instance')
      req_params = {'controller' => 'maestrano/auth/saml', 'action' => 'init', 'a_param' => 'value'}
      
      r.stubs(:redirect_url).returns("http://idpprovider.com?r=request")
      Maestrano::Saml::Request.stubs(:new).with(req_params,@request.session).returns(r)
      get :init, a_param: 'value'
      assert_redirected_to r.redirect_url
    end
  end
  
end