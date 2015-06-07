Rails.application.routes.draw do
  root to: 'creatures#index'
  
  ## Just to keep it RESTful
  get '/creatures', to: "creatures#index"
  get '/creatures/new', to: "creatures#new", as: "new_creature"
  # rake routes to check this route out
  post '/creatures', to: "creatures#create"
  get '/creatures/:id', to: "creatures#show", as: "creature"

  get '/creatures/:id/edit', to: "creatures#edit", as: "edit_creature"

  # The update route
  patch "/creatures/:id/", to: "creatures#update", as: "update_creature"

  # The destroy route
  delete "/creatures/:id", to: "creatures#destroy"
  
end
