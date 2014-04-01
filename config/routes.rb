WildlifeTracker::Application.routes.draw do
  match('/', {:via => :get, :to => 'species#index'})
  match('species', {:via => :get, :to => 'species#index'})
  match('species', {:via => :post, :to => 'species#create'})
  match('species/new', {:via => :get, :to => 'species#new'})
  match('species/:id', {:via => :get, :to => 'species#show'})
  match('species/:id/edit', {:via => :get, :to => 'species#edit'})
  match('species/:id', {:via => [:patch, :put], :to => 'species#update'})
  match('species/:id', {:via => :delete, :to => 'species#destroy'})

  match('species/:species_id/sighting', {:via => :post, :to => 'sighting#create'})
  match('species/:species_id/sighting/new', {:via => :get, :to =>'sighting#new'})
  match('species/:species_id/sighting/:id', {:via => :get, :to =>'sighting#show'})
  match('sighting/:id/edit', {:via => :get, :to => 'sighting#edit'})
  match('sighting/:id', {:via => [:patch, :put], :to => 'sighting#update'})

end
