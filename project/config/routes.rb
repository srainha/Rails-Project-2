Rails.application.routes.draw do
  get 'locations/new'

  get 'locations/create'

  get 'events/new', to: 'events#new'
  get 'events/index', to: 'events#index'
  post 'create', to: 'events#create'
  root to: 'visitors#index'
  devise_for :users
  resources :users
  
  get '/courses/new', to: 'courses#new'
  get '/create', to: 'events#new' #change to events#create
  post '/events/create' => 'events#create' #change to events#create


  get '/enter', to: 'courses#new' #change to events#create
  post '/courses/create', to: 'courses#create'

end
