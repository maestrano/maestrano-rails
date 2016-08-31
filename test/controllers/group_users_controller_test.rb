require 'test_helper'

class GroupUsersControllerTest < ActionController::TestCase
  tests Maestrano::Account::GroupUsersController

  context "unauthenticated" do
    should "deny access" do
      delete :destroy, group_id: 'cld-1', id: 'usr-1'
      assert_equal '401', response.code
    end
  end

  context "authenticated" do
    setup do
      @request.env["HTTP_AUTHORIZATION"] = "Basic " + Base64.encode64("#{Maestrano.param('api.id')}:#{Maestrano.param('api.key')}")
    end

    should "be successful" do
      delete :destroy, group_id: 'cld-1', id: 'usr-1'
      assert_equal '200', response.code
    end
  end
end
