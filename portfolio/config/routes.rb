Rails.application.routes.draw do

  root :to => 'skills#about'

  get "/log-in", to: "sessions#new"

  post "/log-in", to: "sessions#create"

  get "/log-out", to: "sessions#destroy", as: :log_out

  get 'skills/admin'

  get 'skills/about'

  resources :users

  resources :profiles

   resources :skills do
     resources :projects, :except => [:index]
    end
end
