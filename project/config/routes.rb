Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
  
  get '/courses/new', to: 'courses#new'
  get '/events/new', to: 'events#new'
  get '/create', to: 'events#new' #change to events#create
  post '/events/create' => 'events#create' #change to events#create

  get '/enter', to: 'courses#new' #change to events#create
  post '/courses/create', to: 'courses#create'

end
