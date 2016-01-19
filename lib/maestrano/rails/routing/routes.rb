module ActionDispatch::Routing
  class Mapper
    def maestrano_routes
      namespace :maestrano do
        scope module: :rails do
          get '/metadata/:tenant', to: 'metadata#index', as: 'tenant'
        end

        namespace :auth do
          resources :saml, only:[] do
            get 'init/:tenant', on: :collection, to: 'saml#init'
            post 'consume/:tenant', on: :collection, to: 'saml#consume'
          end
        end

        namespace :account do
          delete 'groups/:id/:tenant', to: 'groups#destroy'
          delete 'groups/:group_id/users/:id/:tenant', to: 'group_users#destroy'
        end
      end
    end
  end
end