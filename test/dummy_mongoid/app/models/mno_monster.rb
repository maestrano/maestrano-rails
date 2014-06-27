class MnoMonster
  include ::Mongoid::Document
  field :email,      type: String, default: ""
  field :first_name, type: String, default: ""
  field :last_name,  type: String, default: ""
  field :provider,   type: String, default: ""
  field :uid,        type: String, default: ""
  
  maestrano_user_via :provider, :uid do |user,maestrano|
    user.first_name = maestrano.first_name
    user.last_name = maestrano.last_name
    user.email = maestrano.email
  end
end
