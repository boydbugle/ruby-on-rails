Rails.application.routes.draw do

  root :to => 'skills#index'

  get "/log-in", to: "sessions#new"

  post "/log-in", to: "sessions#create"

  get "/log-out", to: "sessions#destroy", as: :log_out

  get 'skills/admin'

  resources :users

   resources :skills do
     resources :projects, :except => [:index]
    end
end
