class MnoMonster < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :provider, :uid
end
