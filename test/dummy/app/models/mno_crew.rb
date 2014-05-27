class MnoCrew < ActiveRecord::Base
  maestrano_group_via :provider, :uid do |group,maestrano|
    group.name = maestrano.company_name || "Your Group"
  end
  
  attr_accessible :name
  attr_protected :provider, :uid
end
