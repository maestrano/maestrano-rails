class MnoMonster < ActiveRecord::Base
  maestrano_user_via :provider, :uid
  
  attr_accessible :email, :first_name, :last_name
  attr_protected :provider, :uid
end
