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
      end
    end
  end
end