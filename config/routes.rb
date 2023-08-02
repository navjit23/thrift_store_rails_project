Rails.application.routes.draw do
  devise_for :users
  resources :orders
  resources :products_ordereds
  resources :prices
  resources :products do
    member do
      post :add_to_cart
    end
  end
  resources :categories
  resources :comments
  resources :cards
  resources :customers
  resources :admins
  resource :cart, only: :show

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#index"
end
