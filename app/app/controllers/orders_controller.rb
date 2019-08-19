class OrdersController < ApplicationController
  def index
    @orders = Order.all
    p "--------------------"
    p @orders
  end
end