Rails.application.routes.draw do
  # For details on thRails.application.routes.draw do
  root 'artists#index'

    resources :artists do
      resources :songs
    end
      resources :photos, only: [:destroy]

    namespace :api do
      resources :artists do
        resources :songs
      end
        resources :photos, only: [:destroy]
    end

  end
