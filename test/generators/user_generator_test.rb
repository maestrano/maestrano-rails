require 'test_helper'


class UserGeneratorTest < Rails::Generators::TestCase
  tests Maestrano::Generators::UserGenerator
  destination File.expand_path("../../tmp", __FILE__)
  setup :prepare_destination

  should "call the active_record migration generator successfully" do
    run_generator %w(monster --orm=active_record)
    assert_migration "db/migrate/add_maestrano_to_monsters.rb", /def self.up/
  end
  
  should "call the mongoid migration generator successfully" do
    copy_model('monster')
    run_generator %w(monster --orm=mongoid)
    assert_file "app/models/monster.rb", /maestrano_user_via/
  end
  
  # Copy model like: 'monster' or 'admin/monster'
  def copy_model(relative_model_path)
    model_path = File.expand_path("../../dummy/app/models/#{relative_model_path}.rb", __FILE__)
    if (path_ary = relative_model_path.split('/')) && path_ary.size > 1
      destination = File.join(destination_root, "app", "models",*path_ary[0..-2])
    else
      destination = File.join(destination_root, "app", "models")
    end

    FileUtils.mkdir_p(destination)
    FileUtils.cp model_path, destination
    
    # Replace class name
    class_name = path_ary.map(&:capitalize).join("::")
    full_path = File.join(destination,"#{path_ary[-1]}.rb")
    text = File.read(full_path)
    replace = text.gsub("class #{class_name} < ActiveRecord::Base", "class #{class_name}\ninclude Mongoid::Document\n")
    File.open(full_path, "w") {|file| file.puts replace}
  end
end
