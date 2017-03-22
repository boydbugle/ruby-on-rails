Rails.application.routes.draw do
  root :to => 'skills#index'

  # get 'projects/show'

  # get 'projects/new'

  # get 'projects/edit'

  get 'skills/admin'

  # get 'skills/index'

  # get 'skills/show'

  # get 'skills/new'

  # get 'skills/edit'

   resources :skills 
     resources :projects, :except => [:index]
     
end
