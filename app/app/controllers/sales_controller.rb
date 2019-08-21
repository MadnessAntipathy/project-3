class SalesController < ApplicationController
  def show
    @orders = Order.all.where(sales_id: params[:id])
    @sale = Sale.find(params[:id])
    # @qty = ItemsOrder.all.where({order_id: @orders[0][:id], item_order: item})
    @qty = ItemsOrder.all.joins(:order, :item).where('orders.sales_id' => params[:id])
    p "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    p @qty
    p "----------------------------------"
    p @orders
    p "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  end
end
