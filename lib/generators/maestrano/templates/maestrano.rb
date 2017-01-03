if Rails.env.test?
  Maestrano.configure do |config|
    config.environment = 'local'
  end
else
  Maestrano.auto_configure
end
