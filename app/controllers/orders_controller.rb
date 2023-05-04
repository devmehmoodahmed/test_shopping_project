# frozen_string_literal: true

class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.bill = CartItem.all.sum { |item| item.product.price * item.quantity }
    if @order.save
      CartItem.destroy_all
      redirect_to order_confirmation_order_path(@order)
    else
      render :new
    end
  end

  def order_confirmation
    @order = Order.find(params[:id])
  end

  private

  def order_params
    params.require(:order).permit(:customer_name, :shipping_address, :phone_number, :payment_method)
  end
end
