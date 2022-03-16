Rails.application.routes.draw do
  resources :dishes, only: [:new, :create]
  resources :menus, only: [:index, :new, :create]

  # Defines the root path route ("/")
  root "menus#index"
end
