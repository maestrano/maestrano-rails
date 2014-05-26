require "test_helper"

if TEST_ORM == :active_record
  require "generators/active_record/maestrano_user_generator"
  
  class ActiveRecordUserGeneratorTest < Rails::Generators::TestCase
    tests ActiveRecord::Generators::MaestranoUserGenerator
    destination File.expand_path("../../../tmp", __FILE__)
    setup :prepare_destination


    context "normal model" do
      setup { copy_model('monster') }
    
      should "create the right migration" do
        run_generator %w(monster)
        assert_migration "db/migrate/add_maestrano_to_monsters.rb", /def self.up/
      end
      
      should "edit the model content" do
        run_generator %w(monster)
        assert_file "app/models/monster.rb", /maestrano_user_via/
      end
      
      should "not include parameters in rails 4" do
        ActiveRecord::Generators::MaestranoUserGenerator.any_instance.stubs(:rails_3?).returns(false)
        run_generator %w(monster)
        assert_file "app/models/monster.rb" do |content|
          assert_no_match /attr_protected :provider/, content
        end
      end
      
      should "not include parameters if rails 3 and strong_parameter present" do
        ActiveRecord::Generators::MaestranoUserGenerator.any_instance.stubs(:rails_3?).returns(true)
        ActiveRecord::Generators::MaestranoUserGenerator.any_instance.stubs(:strong_parameters_enabled?).returns(true)
        run_generator %w(monster)
        assert_file "app/models/monster.rb" do |content|
          assert_no_match /attr_protected :provider/, content
        end
      end
      
      should "include parameters if rails 3 and strong_parameter not present" do
        ActiveRecord::Generators::MaestranoUserGenerator.any_instance.stubs(:rails_3?).returns(true)
        ActiveRecord::Generators::MaestranoUserGenerator.any_instance.stubs(:strong_parameters_enabled?).returns(false)
        run_generator %w(monster)
        assert_file "app/models/monster.rb" do |content|
          assert_match /attr_protected :provider/, content
        end
      end
    end
    
    context "namespaced model" do
      setup { copy_model('admin/monster') }
    
      should "create the right migration" do
        run_generator %w(admin/monster)
        assert_migration "db/migrate/add_maestrano_to_admin_monsters.rb", /def self.up/
      end
      
      should "edit the model content" do
        run_generator %w(admin/monster)
        assert_file "app/models/admin/monster.rb", /maestrano_user_via/
      end
    end
    
    # Copy model like: 'monster' or 'admin/monster'
    def copy_model(relative_model_path)
      model_path = File.expand_path("../../../dummy/app/models/#{relative_model_path}.rb", __FILE__)
      if (path_ary = relative_model_path.split('/')) && path_ary.size > 1
        destination = File.join(destination_root, "app", "models",*path_ary[0..-2])
      else
        destination = File.join(destination_root, "app", "models")
      end

      FileUtils.mkdir_p(destination)
      FileUtils.cp model_path, destination
    end
  end
end
