Rails.application.routes.draw do

  resources :sessions, only: [:create]
  resources :users, only: [:index]
  root to: "users#index"


#  post "/users", to: "users#login"

  
end
