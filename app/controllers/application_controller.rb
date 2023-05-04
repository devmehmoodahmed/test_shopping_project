# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :initialize_cart

  private

  def initialize_cart
    @cart = Cart.new(session[:cart] ||= {})
  end
end
