class MnoMonster < ActiveRecord::Base
  maestrano_user_via :provider, :uid, :tenant do |user,maestrano|
    user.first_name = maestrano.first_name
    user.last_name = maestrano.last_name
    user.email = maestrano.email
  end
end
