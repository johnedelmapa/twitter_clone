Rails.application.routes.draw do
  root 'pages#home'
  get '/about', to: 'pages#about' 
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  delete '/logout', to: 'sessions#destroy'


  resources :users
  resources :sessions, only: :create
  resources :microposts, only: [:create, :destroy]

  resources :relationships, only: [:create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
