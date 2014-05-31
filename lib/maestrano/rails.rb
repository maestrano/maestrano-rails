require 'maestrano'
require 'maestrano/rails/routing/routes'
require 'maestrano/rails/models/maestrano_auth_resource'
require 'maestrano/rails/controllers/maestrano_security'

module Maestrano
  module Rails
    class Engine < ::Rails::Engine
    end
  end
end