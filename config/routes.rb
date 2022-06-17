Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show]
      resources :posts, only: [:index, :create, :destroy]
      resources :comments, only: [:create]
      get "/posts", to: "posts#index"
      post "/signup", to: "users#create"
      get "/profile", to: "users#show"
      post "/login", to: "sessions#login"
      get "hello", to: "sessions#autologin"
    end
  end
end
