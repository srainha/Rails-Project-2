Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
  
  get '/create', to: 'user#create' #change to events#create
  patch 'create' => 'user#create' #change to events#create

  get '/enter', to: 'course#new' #change to events#create
  post '/courses/create', to: 'course#new'
end
