class MnoCrew
  include Mongoid::Document
  field :name,      type: String, default: ""
  field :provider,  type: String, default: ""
  field :uid,       type: String, default: ""
  
  maestrano_group_via :provider, :uid do |group,maestrano|
    group.name = maestrano.company_name || "Your Group"
  end
  
end
