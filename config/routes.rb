Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static_pages#root"

  namespace :api, defaults: { format: :json } do
    resources :users, only: [:show, :create]
    resource :session, only: [:create, :destroy]
    resources :comments, only: [:update, :destroy]
    resources :artworks, only: [:index, :show] do
      resources :comments, only: [:index, :create]
      resources :likes, only: [:create, :destroy]
    end
  end

end
