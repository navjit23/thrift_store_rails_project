Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
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
  resource :cart, only: [:show] do
    post 'update_quantity', on: :collection
    member do
      get :check_out
    end
  end
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  delete 'cart/remove_item', to: 'carts#remove_item', as: 'remove_item_cart'

  #post 'cart/update_quantity', to: 'cart#update_quantity', as: 'update_quantity_cart'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#index"
end
