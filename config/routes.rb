Rails.application.routes.draw do
  resources :menus, only: [:index, :new, :create] do
    resources :dishes, only: [:new, :create]
  end

  # Defines the root path route ("/")
  root "menus#index"
end
