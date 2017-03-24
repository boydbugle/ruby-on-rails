Rails.application.routes.draw do
  root :to => 'skills#index'

  get 'skills/admin'

   resources :skills do
     resources :projects, :except => [:index]
    end
end
