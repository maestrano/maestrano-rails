require 'test_helper'
 
class MaestranoUserViaTest < ActiveSupport::TestCase
  context "class methods" do
    should "have the right field definition" do
      assert_equal "provider", MnoMonster.maestrano_fields[:provider]
      assert_equal "uid", MnoMonster.maestrano_fields[:uid]
    end
  end
  
  context "instance methods" do
    context "maestrano?" do
      should "return true if provider is maestrano and uid not null" do
        m = MnoMonster.new
        m.provider = 'maestrano'
        m.uid = 'usr-1'
        assert m.maestrano?
      end
      
      should "return false if provider is something else" do
        m = MnoMonster.new
        m.provider = 'somethingelse'
        m.uid = 'usr-1'
        assert !m.maestrano?
      end
      
      should "return false if uid is blank" do
        m = MnoMonster.new
        m.provider = 'maestrano'
        m.uid = ''
        assert !m.maestrano?
      end
    end
    
  end
  
end