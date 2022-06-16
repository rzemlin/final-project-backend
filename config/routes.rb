Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create, :destroy]
      resources :posts, only: [:index, :create, :destroy]
      resources :comments, only: [:create, :destroy]
      get "/posts", to: "posts#index"
    end
  end
end
