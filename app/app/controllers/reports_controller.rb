class ReportsController < ApplicationController
   def index
    @orders = Order.all
    @purchases = Purchase.all
    @sales = Sale.all
    @sum = 0
    @orders.each do |order|
      order.items.each do |item|
        @sum += item.price * @purchases.find_by(order_id: order.id, item_id: item.id).item_quantity
      end


    @dailytotal =
    end


  end
end



# link_to 'View', sale_path(sale)