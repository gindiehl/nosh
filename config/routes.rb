Rails.application.routes.draw do
  root to: 'home#index'

  resources :services do
    resources :reviews, except: [:show, :index]
  end
# routes for user auth
  resources :users, except: [:edit, :update]
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
end
