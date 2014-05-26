require 'test_helper'
 
class MaestranoGroupViaTest < ActiveSupport::TestCase
  context "class methods" do
    should "have the right field definition" do
      assert_equal "provider", MnoCrew.maestrano_fields[:provider]
      assert_equal "uid", MnoCrew.maestrano_fields[:uid]
    end
  end
  
  context "instance methods" do
    context "maestrano?" do
      should "return true if provider is maestrano and uid not null" do
        m = MnoCrew.new
        m.provider = 'maestrano'
        m.uid = 'cld-1'
        assert m.maestrano?
      end
      
      should "return false if provider is something else" do
        m = MnoCrew.new
        m.provider = 'somethingelse'
        m.uid = 'cld-1'
        assert !m.maestrano?
      end
      
      should "return false if uid is blank" do
        m = MnoCrew.new
        m.provider = 'maestrano'
        m.uid = ''
        assert !m.maestrano?
      end
    end
    
  end
  
end