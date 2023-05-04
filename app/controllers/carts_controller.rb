# frozen_string_literal: true

class CartsController < ApplicationController
  def show
    @cart_items = CartItem.all
  end

  def update
    item = CartItem.find_by(id: params[:cart_item][:id])
    item.update(quantity: params[:cart_item][:quantity].to_i)
    redirect_to cart_path
  end

  def destroy
    item = CartItem.find_by(id: params[:id])
    item.destroy
    redirect_to products_path
  end

  def add_item
    product = Product.find(params[:product_id])
    @cart_item = CartItem.find_by(product_id: product.id)

    if @cart_item
      @cart_item.quantity = @cart_item.quantity.nil? ? 1 : @cart_item.quantity + 1
    else
      @cart_item = CartItem.create(product:, quantity: 1)
    end

    if @cart_item.save
      flash[:success] = 'Item added to cart'
    else
      flash[:error] = 'Item not added to cart'
    end

    redirect_to cart_path(product)
  end
end
