Rails.application.routes.draw do
  devise_for :users
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
  get '/index', to: 'pages#index'
  root 'pages#index'


end
