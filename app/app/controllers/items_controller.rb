class ItemsController < ApplicationController

  def destroy
    p "DELETINGGGGG"
    p params
    # p params[:format]


    @order = Order.find(params[:id])
    # # p "-------------------------"

    # item = @order.items.find(params[:format])
    # item = @order.items.find(:item_id)

    item = @order.items.find(params[:item_id])
    # item.order_items.delete(order_item_id)


    if item
        @order.items.delete(item)
    end

    redirect_to orders_path
  end

end