<p align="center">
<img src="https://raw.github.com/maestrano/maestrano-rails/master/maestrano.png" alt="Maestrano Logo">
</p>

Maestrano Cloud Integration is currently in closed beta. Want to know more? Send us an email to <contact@maestrano.com>.


- - -

1.  [Getting Setup](#getting-setup)
2. [Getting Started](#getting-started)
  * [User Model](#user-model)
  * [Group Model](#group-model)
  * [Controller Setup](#controller-setup)
3. [API](https://github.com/maestrano/maestrano-ruby#api)
  * [Bill](https://github.com/maestrano/maestrano-ruby#bill)
  * [Recurring Bill](https://github.com/maestrano/maestrano-ruby#recurring-bill)

- - -


## Getting Setup
Before integrating with us you will need an API Key. Maestrano Cloud Integration being still in closed beta you will need to contact us beforehand to gain production access.

For testing purpose we provide an API Sandbox where you can freely obtain an API Token. The sandbox is great to test single sign-on and API integration (e.g: billing API).

To get started just go to: http://api-sandbox.maestrano.io

## Getting Started

maestrano-rails works with Rails 3.2 onwards. You can add it to your Gemfile with:

```ruby
gem 'maestrano-rails'
```

Run bundle to install the gem as well as the [maestrano ruby bindings](https://github.com/maestrano/maestrano-ruby) (dependency)

```console
bundle
```

After you install Maestrano and add it to your Gemfile, you need to run the generator:

```console
rails generate maestrano:install
```

The generator will install an initializer which describes ALL Maestrano's configuration options. You will need to take a look at it as this is where you set your API key.
The generator also generates a SamlController for single sign-on that you will need to customize (see below) as well as the required routes.

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

This block is used to create a mapping between your user model fields and the attributes provided by Maestrano during the single sign-on handshake.

### Group model
Because Maestrano works with businesses it expects your service to be able to manage groups of users. A group represents 1) a billing entity 2) a collaboration group. During the first single sign-on handshake both a user and a group should be created. Additional users logging in via the same group should then be added to this existing group (see controller setup below)

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

### Controller setup
The last step of integrating single sign-on with Maestrano is to customize the consume action of the SamlController. This action represents the last step of single sign-on handshake and should handle user finding/creation, group finding/creation, user-group relationship and finally user sign in.

The controller is located here: app/controllers/maestrano/auth/saml_controller.rb

The sample belows shows one possible way of writing this controller action:

```ruby
class Maestrano::Auth::SamlController < Maestrano::Rails::SamlBaseController
  
  #== POST '/maestrano/auth/saml/consume'
  # -
  # Assuming you have enabled maestrano on a user model
  # called 'User' and a group model called 'Organization'
  # the action could be written the following way
  def consume
    # 1)Find or create the user and the group
    # --
    # The class method 'find_or_create_for_maestrano' is provided
    # by the maestrano-rails gem on the model you have maestrano-ized.
    # The method uses the mapping defined in the model 'maestrano_*_via' 
    # block to create the resource if it does not exist
    # The 'user_auth_hash' and 'group_auth_hash' methods are provided
    # by the controller.
    # --
    user = User.find_or_create_for_maestrano(user_auth_hash)
    organization = Organization.find_or_create_for_maestrano(group_auth_hash)
    
    
    # 2) Add the user to the group if not already a member
    # --
    # The 'user_group_rel_hash' method is provided by the controller.
    # The role attribute provided by maestrano is one of the following: 
    # 'Member', 'Power User', 'Admin', 'Super Admin'
    # The 'member_of?' and 'add_member' methods are not provided by 
    # maestrano and are left to you to implement on your models
    # --
    unless user.member_of?(organization)
      organization.add_member(user,role: user_group_rel_hash[:role])
    end
    
    
    # Sign the user in and redirect to application root
    # --
    # The 'sign_in' method is not provided by maestrano but should already
    # be there if you are using an authentication framework like Devise
    # --
    sign_in(user)
    redirect_to root_path
  end
end
```

## API
The maestrano-rails gem also provides bindings to its REST API allowing you to access, create, update or delete various entities under your account (e.g: billing).

Your can read the API documentation directly on the [maestrano gem project page](https://github.com/maestrano/maestrano-ruby#api).

## Support
This README is still in the process of being written and improved. As such it might not cover some of the questions you might have.

So if you have any question or need help integrating with us just let us know at support@maestrano.com

## License

MIT License. Copyright 2014 Maestrano Pty Ltd. https://maestrano.com

You are not granted rights or licenses to the trademarks of Maestrano.
