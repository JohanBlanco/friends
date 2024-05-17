Rails.application.routes.draw do
  devise_for :users
  resources :friends
  get 'home/index'

  # Defines the root path route ("/")
  root "home#index"

  # Defines the about path route ("/about
  get 'home/about'
end
