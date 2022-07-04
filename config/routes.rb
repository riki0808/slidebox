Rails.application.routes.draw do
  root 'homes#index'
  
  resources :users
  resources :settings
  resources :docs

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logout', to: 'sessions#destroy'

end
