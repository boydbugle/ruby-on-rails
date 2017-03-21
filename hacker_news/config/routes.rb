Rails.application.routes.draw do
get '/users/new', to: 'users#new', as: 'signup'
get '/sessions/new', to: 'sessions#new', as: 'login'

  resources :users
  resources :sessions

  root to: 'posts#index'

  resources :posts do
    resources :comments, :except =>[:show]
  end
end
