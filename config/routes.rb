Rails.application.routes.draw do
  root to: 'users#index'
  resources :users, except: [:index]


  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  post "/sessions", to: "sessions#create"

  resources :posts

  resources :cities

  get "/comments", to: "comments#index", as: 'comments'
  get "/comments/:id", to: "comments#show", as: 'comment'
  post "/posts/:id/comments", to: "comments#create"
  delete "/comments/:id", to: "comments#destroy"

end
