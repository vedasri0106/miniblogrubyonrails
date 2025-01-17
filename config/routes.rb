Rails.application.routes.draw do
  # Use Devise for user authentication

  root "posts#index"
  # Resources for posts, with nested resources for comments
  # resources :posts do
  #   resources :comments, only: [:create]
  # end

  # Define the root path ("/") to show all posts
  resources :posts, only: [:index, :new, :create, :show]
  resources :comments, only: [:create]

  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]
  # Health check route for verifying app status
  get "up" => "rails/health#show", as: :rails_health_check
end