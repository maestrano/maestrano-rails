module ActionDispatch::Routing
  class Mapper
    def maestrano_routes
      namespace :maestrano do
        namespace :auth do
          resources :saml, only:[] do
            get 'init', on: :collection
            post 'consume', on: :collection
          end
        end
        
        namespace :account_hook do
          resources :groups, only: [:destroy] do
            resources :users, only: [:destroy], controller: 'group_users'
          end
        end
      end
    end
  end
end