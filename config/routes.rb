Rails.application.routes.draw do
  resources :users, only: [:index]

 post "/users", to: "users#login"

  
end
