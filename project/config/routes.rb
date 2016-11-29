Rails.application.routes.draw do
  get 'events/new', to: 'events#new'
  get 'events/index', to: 'events#index'
  post 'create', to: 'events#create'
  root to: 'visitors#index'
  devise_for :users
  resources :users
  patch 'create' => 'user#create' #change to events#create
  get '/enter', to: 'courses#new' #change to events#create
  post '/courses/create', to: 'courses#new'
end
