# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'products#index'
  resources :products, only: %i[index show] 

  resource :cart, only: [:show, :update, :destroy]

  post 'add_to_cart/:product_id', to: 'carts#add_item', as: 'add_to_cart'
end
