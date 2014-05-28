require 'test_helper'

class SamlBaseControllerTest < ActionController::TestCase
  tests Maestrano::Auth::SamlController
  
  context "init phase" do
    should "create a saml request using params and session and redirect the user" do
      req = mock('saml_request_instance')
      req_params = {'controller' => 'maestrano/auth/saml', 'action' => 'init', 'a_param' => 'value'}
      
      req.stubs(:redirect_url).returns("http://idpprovider.com?r=request")
      Maestrano::Saml::Request.stubs(:new).with(req_params,@request.session).returns(req)
      get :init, a_param: 'value'
      assert_redirected_to req.redirect_url
    end
  end
  
  context "consume phase" do
    setup do
      @saml_attr = {
        'mno_session'          => 'f54sd54fd64fs5df4s3d48gf2',
        'mno_session_recheck'  => Time.now.utc.iso8601,
        'group_uid'            => 'cld-1',
        'group_end_free_trial' => Time.now.utc.iso8601,
        'group_role'           => 'Admin',
        'uid'                  => "usr-1",
        'virtual_uid'          => "usr-1.cld-1",
        'email'                => "j.doe@doecorp.com",
        'virtual_email'        => "usr-1.cld-1@mail.maestrano.com",
        'name'                 => "John",
        "surname"              => "Doe",
        "country"              => "AU",
        "company_name"         => "DoeCorp"
      }
      @saml_resp = mock('saml_response')
      @saml_resp.stubs(:attributes).returns(@saml_attr)
      @saml_resp.stubs(:is_valid?).returns(true)
      Maestrano::Saml::Response.stubs(:new).returns(@saml_resp)
    end
    
    should "set a saml_request in scope" do
      post :consume, SAMLResponse: "g45ad5v40xc4b3fd478"
      assert_equal @saml_resp, @controller.saml_response
    end
    
    should "set the user_auth_hash in scope" do
      post :consume, SAMLResponse: "g45ad5v40xc4b3fd478"
      expected_hash = Maestrano::SSO::BaseUser.new(@saml_resp).to_hash
      assert_equal expected_hash, @controller.user_auth_hash
    end
    
    should "set the group_auth_hash in scope" do
      post :consume, SAMLResponse: "g45ad5v40xc4b3fd478"
      expected_hash = Maestrano::SSO::BaseGroup.new(@saml_resp).to_hash
      assert_equal expected_hash, @controller.group_auth_hash
    end
  end
  
end