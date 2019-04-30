Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :shops do
        resources :coffees
      end
      resources :coffees

      resources :flavors
      resources :varieties
      resources :processing_methods
      resources :origins
    end
  end
end
