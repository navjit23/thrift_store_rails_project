Rails.application.routes.draw do
  resources :orders
  resources :products_ordereds
  resources :prices
  resources :products
  resources :categories
  resources :comments
  resources :cards
  resources :customers
  resources :admins
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#index"
end
