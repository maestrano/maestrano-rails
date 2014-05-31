require 'test_helper'

class GenericControllerTest < ActionController::TestCase
  tests PagesController
  
  context "with a maestrano session" do
    setup do
      @original_sso_value = Maestrano.param(:sso_enabled)
      Maestrano.configure { |config| config.sso_enabled = true }
      
      @request.session[:maestrano] = Base64.encode64({
        uid: 'usr-1',
        session: 'fdsf544fd5sd4f',
        session_recheck: Time.now.utc.iso8601,
        group_uid: 'cld-1'
      }.to_json)
    end
    
    teardown do
      Maestrano.configure { |config| config.sso_enabled = @original_sso_value }
    end
    
    should "be successful if the maestrano session is still valid" do
      sso_session = mock('maestrano_sso_session')
      sso_session.stubs(:valid?).returns(true)
      Maestrano::SSO::Session.stubs(:new).returns(sso_session)
      get :home
      assert_response :success
    end
    
    should "initialize redirect to SSO initialization if invalid" do
      sso_session = mock('maestrano_sso_session')
      sso_session.stubs(:valid?).returns(false)
      Maestrano::SSO::Session.stubs(:new).returns(sso_session)
      get :home
      assert_redirected_to Maestrano::SSO.init_url
    end
    
    should "not redirect to SSO init if sso is disabled" do
      Maestrano.configure { |config| config.sso_enabled = false }
      sso_session = mock('maestrano_sso_session')
      sso_session.stubs(:valid?).returns(false)
      Maestrano::SSO::Session.stubs(:new).returns(sso_session)
      get :home
      assert_response :success
    end
  end
  
  context "with no maestrano session" do
    should "be successful" do
      get :home
      assert_response :success
    end
  end
  
end