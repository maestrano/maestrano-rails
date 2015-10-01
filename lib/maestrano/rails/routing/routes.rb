module ActionDispatch::Routing
  class Mapper
    def maestrano_routes
      namespace :maestrano do
        scope module: :rails do
          get '/metadata', to: 'metadata#index'
          get '/metadata/:tenant', to: 'metadata#index', as: 'tenant'
        end

        namespace :auth do
          resources :saml, only:[] do
            get 'init', on: :collection
            get 'init/:tenant', on: :collection, to: 'saml#init', as: 'tenant'
            post 'consume', on: :collection
          end
        end
        
        namespace :account do
          resources :groups, only: [:destroy] do
            resources :users, only: [:destroy], controller: 'group_users'
          end
        end
      end
    end
  end
end