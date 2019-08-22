class SalesController < ApplicationController
  def show
    @orders = Order.all.where(sales_id: params[:id])
    @sale = Sale.find(params[:id])
    # @qty = ItemsOrder.all.where({order_id: @orders[0][:id], item_order: item})
    @purchases = Purchase.all
    @qty = ItemsOrder.all.joins(:order, :item).where('orders.sales_id' => params[:id])
    p "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    p @qty
    p "----------------------------------"
    p @orders
    p "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    @sum = 0
    @orders.each do |order|
      order.items.each do |item|
        @sum += item.price * @purchases.find_by(order_id: order.id, item_id: item.id).item_quantity
      end
    end

  end
end