require 'test_helper'

class MaestranoUserViaTest < ActiveSupport::TestCase
  context "class methods" do
    context "maestrano_*_via" do
      should "have the right field definition" do
        assert_equal "provider", MnoMonster.maestrano_options[:provider]
        assert_equal "uid", MnoMonster.maestrano_options[:uid]
        assert MnoMonster.maestrano_options[:mapping].is_a?(Proc)
      end
    end

    context "find_or_create_for_maestrano class method" do
      should "return the MnoMonster if it exists" do
        m = MnoMonster.create(first_name: "John", last_name: "Jack", email: "monster@co.com", provider: 'maestrano', uid: 'usr-1', tenant: 'default')
        assert_equal m, MnoMonster.find_or_create_for_maestrano({provider: 'maestrano', uid: 'usr-1'})
      end

      should "not return a MnoMonster from another provider if it exists" do
        m = MnoMonster.create(first_name: "John", last_name: "Jack", email: "monster@co.com", provider: 'someoneelse', uid: 'usr-1', tenant: 'default')
        assert_not_equal m, MnoMonster.find_or_create_for_maestrano({provider: 'maestrano', uid: 'usr-1'})
      end

      should "create a monster using the mapping block" do
        result_hash = {
          provider: 'maestrano',
          uid: 'usr-2',
          info: {
            email: "monster@monst.com",
            first_name: "Mon",
            last_name: "Ster"
          }
        }
        m = MnoMonster.find_or_create_for_maestrano(result_hash)
        assert_equal result_hash[:provider], m.provider
        assert_equal result_hash[:uid], m.uid
        assert_equal result_hash[:info][:email], m.email
        assert_equal result_hash[:info][:first_name], m.first_name
        assert_equal result_hash[:info][:last_name], m.last_name
      end
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
