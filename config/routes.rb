Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static_pages#root"

  namespace :api, defaults: { format: :json } do
    resources :users, only: [:show, :create]
    resource :session, only: [:create, :destroy]
    resources :comments, only: [:update, :destroy]
    resources :likes, only: [:index, :destroy]
    resources :artworks, only: [:index, :show] do
      # resources :likes, only: [:index, :create]
      resources :likes, only: [:create]
      resources :comments, only: [:index, :create]
    end
  end

end
