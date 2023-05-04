# frozen_string_literal: true

class ProductsController < ApplicationController
  before_action :set_product, only: %i[show]

  def index
    @products = Product.all
  end

  def show
    @cart_item = CartItem.new
    @cart_item.product = @product
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end
end
