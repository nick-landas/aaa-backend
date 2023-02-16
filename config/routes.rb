Rails.application.routes.draw do
  resources :messages
  resources :memberships
  resources :users
  resources :groups
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
