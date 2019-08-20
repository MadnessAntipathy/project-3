class OrdersController < ApplicationController
  def index
    @orders = Order.all
    p "--------------------"
    p @orders
  end

  def show
    @order = Order.find(params[:id])
  end

  def update

    @order = Order.find(params[:id])

    @order.update(order_params)
    p "UPDATEDDDDD"

    redirect_to orders_path
  end


  def destroy

    @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_path

  end


private

  def order_params
    params.require(:order).permit(:completed, :table_id)
  end



end