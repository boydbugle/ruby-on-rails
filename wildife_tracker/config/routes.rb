Rails.application.routes.draw do
root :to => 'sightings#index'

  resources :sightings do
    resources :animals, :except => [:show, :index]
  end
end
