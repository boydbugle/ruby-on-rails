Rails.application.routes.draw do
get '/users/new', to: 'users#new', as: 'signup'
get '/sessions/new', to: 'sessions#new', as: 'login'
post '/comments/:comment_id/comments', to: 'comments#commentable', as: 'commentable'

  resources :users
  resources :sessions

  root to: 'posts#index'

  resources :posts do
    resources :comments
  end

  resources :comments do
    resources :comments
  end
end
