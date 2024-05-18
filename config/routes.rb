Rails.application.routes.draw do
  devise_for :users
  resources :friends
  
  root 'friends#index'

  # Defines the about path route ("/about
  get 'home/about'

  # Redirect to the root path after signing in
  def after_sign_in_path_for(resource)
    root_path
  end
end
