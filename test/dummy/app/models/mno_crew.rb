class MnoCrew < ActiveRecord::Base
  maestrano_group_via :provider, :uid
  
  attr_accessible :name
  attr_protected :provider, :uid
end
