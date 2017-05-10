Rails.application.routes.draw do
root :to => 'sightings#map'
  
get 'map', to: 'sightings#map', as: 'sightings/map'

  resources :sightings do
    resources :animals, :except => [:show, :index]
  end
end
