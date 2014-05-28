![Maestrano Logo](https://raw.github.com/maestrano/maestrano-rails/master/maestrano.png)

Maestrano Cloud Integration is currently in closed beta. Want to know more? Send us an email to <contact@maestrano.com>.

## Getting started

maestrano-rails works with Rails 3.2 onwards. You can add it to your Gemfile with:

```ruby
gem 'maestrano-rails'
```

Run bundle to install the gem as well as the maestrano [ruby bindings](https://github.com/maestrano/maestrano-ruby) (dependency)

```console
bundle
```

After you install Maestrano and add it to your Gemfile, you need to run the generator:

```console
rails generate maestrano:install
```

The generator will install an initializer which describes ALL Maestrano's configuration options. You will need to take a look at it as this is where you set your API key.
The generator also generates a SamlController for Single Sign-On that you will need to customize (see below) as well as the required routes.

When you are done, you can start maestrano-izing your user and group model using the generators.

### User model
Assuming your user model is called 'User' you can run the following generator to prepare this model for single sign-on:

```console
rails generate maestrano:user User
```

This generator will create a migration adding a :provider and :uid field to your user model. If you are already using multi-auth strategies (using [omniauth](https://github.com/intridea/omniauth) for example) then you can just ignore and delete this migration.

Run the migration with:
```console
bundle exec rake db:migrate
```

This generator also adds a configuration block to your user model which looks like this:
```ruby
class User < ActiveRecord::Base
  # Enable Maestrano for this user
  maestrano_user_via :provider, :uid do |user,maestrano|
    user.name = maestrano.first_name
    user.surname = maestrano.last_name
    user.email = maestrano.email
    #user.company = maestrano.company_name
    #user.country_alpha2 = maestrano.country
    #user.some_required_field = 'some-appropriate-default-value'
  end
  
  ...
  
end
```

This block is used to create a mapping between your user model fields and the attributes provided by Maestrano during the Single Sign-On handshake.
