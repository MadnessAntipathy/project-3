class SalesController < ApplicationController
  def show
    @orders = Order.all.where(sales_id: params[:id])
    @sale = Sale.find(params[:id])
    p "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    p @orders
    p "----------------------------------"
  end


end