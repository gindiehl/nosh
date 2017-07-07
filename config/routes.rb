Rails.application.routes.draw do
  root to: 'home#index'

  resources :users 
# routes for user auth
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
end