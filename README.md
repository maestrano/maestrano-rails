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

### Group model
Because Maestrano works with businesses it expects your service to be able to manage groups of users. A group represents 1) a billing entity 2) a collaboration group. During the first Single Sign-On handshake both a user and a group should be created. Additional users logging in via the same group should then be added to this existing group (see controller setup below)

Assuming your group model is called 'Organization' you can run the following generator to prepare this model for single sign-on:

```console
rails generate maestrano:group Organization
```

This generator will create a migration adding a :provider and :uid field to your group model.

Run the migration with:
```console
bundle exec rake db:migrate
```

This generator also adds a configuration block to your group model which looks like this:

```ruby
class Organization < ActiveRecord::Base
  maestrano_group_via :provider, :uid do |group,maestrano|
    group.name = maestrano.company_name || "Your Group"
  end
  
  ...
  
end
```
