Rails.application.routes.draw do
  # route to get new messages for the team
  get '/groups/:id/:datetime', to: 'groups#show'
  # get '/memberships', to: 'memberships#index'
  # get'/messages', to: 'messages#index'
  resources :groups, only: [:index, :show, :create, :update]
  resources :users, only: [:index, :update, :create] do
  resources :memberships, only: [:index] # route to get teams data that the user is a member of
  resources :messages, only: [:index] # route to get messages the user can view
  end

  resources :memberships
  mount ActionCable.server => '/cable'
end