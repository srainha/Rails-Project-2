Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users
  
  get '/create', to: 'user#create' #change to events#create
  patch 'create' => 'user#create' #change to events#create
end
