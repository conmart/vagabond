Rails.application.routes.draw do
  root to: 'users#index'
  resources :users, except: [:index]


  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  post "/sessions", to: "sessions#create"

  resources :posts

  resources :cities

  resources :comments, except: [:post]

  post "/posts/:id/comments", to: "comments#create"


end
