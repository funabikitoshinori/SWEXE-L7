Rails.application.routes.draw do
  root 'top#main'
  get 'top/main'
  resources :products, only: [:index, :new, :create, :destroy]
  resources :cart_items, only: [:create, :destroy]
  resources :carts, only: [:index]
end
