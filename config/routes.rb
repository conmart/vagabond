Rails.application.routes.draw do
  root to: 'users#index'
  resources :users, except: [:index]


  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  post "/sessions", to: "sessions#create"

  resources :posts

  resources :cities

  post "/posts/:id/comments", to: "comments#create"

  # get '/users/new', to: 'users#new', as: 'new_user'
  # post '/users', to: 'users#create'

end
