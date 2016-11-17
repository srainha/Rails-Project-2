Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
  
  get '/create', to: 'user#create' #change to events#create
  patch 'create' => 'user#create' #change to events#create

  get '/enter', to: 'courses#new' #change to events#create
  post '/courses/create', to: 'courses#new'
  
  get "/resources", to: 'resources#create'
  post "/resources/create", to: 'resources#create'
  
end
