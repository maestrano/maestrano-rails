module Maestrano
  module Generators
    class UserGenerator < ::Rails::Generators::NamedBase
      include ::Rails::Generators::ResourceHelpers
      
      source_root File.expand_path("../templates", __FILE__)
      desc "Configure user model <NAME> for maestrano and create migration"
      hook_for :orm, as: :maestrano_user
    end
  end
end