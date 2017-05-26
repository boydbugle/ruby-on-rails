Rails.application.routes.draw do
root :to => 'sightings#index'
  
# get 'map', to: 'sightings#map', as: 'sightings/map'

  resources :sightings do
    resources :animals, :except => [:show, :index]
  end
end
