# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'products#index'
  resources :products, only: %i[index show]

  resource :cart, only: %i[show update destroy]

  post 'add_to_cart/:product_id', to: 'carts#add_item', as: 'add_to_cart'

  resources :orders, only: %i[index new create] do
    member do
      get 'order_confirmation', to: 'orders#order_confirmation'
    end
  end
end
