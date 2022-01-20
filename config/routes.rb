Rails.application.routes.draw do
  root "inventory_items#index"

  resources :inventory_items
  # resources :warehouses
  resources :warehouses do
    resources :locations, controller: 'warehouses/locations'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
