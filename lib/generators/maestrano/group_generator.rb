module Maestrano
  module Generators
    class GroupGenerator < ::Rails::Generators::NamedBase
      include ::Rails::Generators::ResourceHelpers
      
      source_root File.expand_path("../templates", __FILE__)
      desc "Configure group model <NAME> for maestrano and create migration"
      hook_for :orm, as: :maestrano_group
    end
  end
end