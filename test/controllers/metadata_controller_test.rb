require 'test_helper'

class MetadataControllerTest < ActionController::TestCase
  tests Maestrano::Rails::MetadataController
  
  context "unauthenticated" do
    should "deny access" do
      get :index
      assert_equal '401', response.code
    end
  end
  
  context "authenticated" do
    setup do
      @request.env["HTTP_AUTHORIZATION"] = "Basic " + Base64.encode64("#{Maestrano.param('app_id')}:#{Maestrano.param('api_key')}")
    end
    
    should "be successful" do
      get :index
      assert_equal '200', response.code
      assert_equal Maestrano.to_metadata.to_json, response.body
    end
  end
  
end