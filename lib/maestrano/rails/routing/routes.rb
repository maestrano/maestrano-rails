module ActionDispatch::Routing
  class Mapper
    def maestrano_routes
      namespace :maestrano do
        scope module: :rails do
          # GET /maestrano/metadata
          get '/metadata', to: 'metadata#index'

          # GET /maestrano/metadata/mytenant
          get '/metadata/:tenant', to: 'metadata#index'
        end

        namespace :auth do
          resources :saml, only:[] do
            # GET /maestrano/auth/saml/init
            get 'init', on: :collection, to: 'saml#init', as: :default

            # GET /maestrano/auth/saml/init/mytenant
            get 'init/:tenant', on: :collection, to: 'saml#init', as: :tenant

            # POST /maestrano/auth/saml/consume
            post 'consume', on: :collection, to: 'saml#consume'

            # POST /maestrano/auth/saml/consume/mytenant
            post 'consume/:tenant', on: :collection, to: 'saml#consume'
          end
        end

        namespace :account do
          # DELETE /maestrano/account/groups/cld-1234
          delete 'groups/:id', to: 'groups#destroy'

          # DELETE /maestrano/account/groups/cld-1234/mytenant
          delete 'groups/:id/:tenant', to: 'groups#destroy'

          # DELETE /maestrano/account/groups/cld-1234/users/usr-1234
          delete 'groups/:group_id/users/:id', to: 'group_users#destroy'

          # DELETE /maestrano/account/groups/cld-1234/users/usr-1234/mytenant
          delete 'groups/:group_id/users/:id/:tenant', to: 'group_users#destroy'
        end
      end
    end
  end
end