require 'test_helper'
 
class MaestranoGroupViaTest < ActiveSupport::TestCase
  context "class methods" do
    context "maestrano_*_via" do
      should "have the right field definition" do
        assert_equal "provider", MnoCrew.maestrano_options[:provider]
        assert_equal "uid", MnoCrew.maestrano_options[:uid]
        assert MnoCrew.maestrano_options[:mapping].is_a?(Proc)
      end
    end
    
    context "find_or_create_for_maestrano class method" do
      should "return the MnoCrew if it exists" do
        m = MnoCrew.create(name: "SomeCrew",provider: 'maestrano', uid: 'cld-1', tenant: 'default')
        assert_equal m, MnoCrew.find_or_create_for_maestrano({provider: 'maestrano', uid: 'cld-1'})
      end
      
      should "not return a MnoCrew from another provider if it exists" do
        m = MnoCrew.create(name: "SomeOtherCrew", provider: 'someoneelse', uid: 'usr-1', tenant: 'default')
        assert_not_equal m, MnoCrew.find_or_create_for_maestrano({provider: 'maestrano', uid: 'cld-1'})
      end
      
      should "create a monster using the mapping block" do
        result_hash = {
          provider: 'maestrano',
          uid: 'usr-2',
          info: {
            company_name: "Monster Co",
          }
        }
        m = MnoCrew.find_or_create_for_maestrano(result_hash)
        assert_equal result_hash[:provider], m.provider
        assert_equal result_hash[:uid], m.uid
        assert_equal result_hash[:info][:company_name], m.name
      end
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