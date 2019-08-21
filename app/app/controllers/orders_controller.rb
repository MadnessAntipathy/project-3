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

  def submit
    p '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
    p order_params[:table_id]
    p order_params[:item_ids]
    p order_params[:item_quantities]
    p '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
    cart = Cart.where(table_id:order_params[:table_id])
    cart.destroy_all
    # table_id:order_params[:table_id],item_ids:order_params[:item_ids],item_quantity:order_params[:item_quantity]
    @order = Order.new(table_id: order_params[:table_id],item_ids: order_params[:item_ids])
    @order.save



    (0...order_params[:item_ids].size).each do |i|
      purchase = Purchase.new(order_id: @order.id, item_id: order_params[:item_ids][i],item_quantity: order_params[:item_quantities][i])
      purchase.save
    end

    

    # redirect_to orders_path
    redirect_to "/carts/#{order_params[:table_id]}"

  end


private

  def order_params
    params.require(:order).permit(:table_id, :item_ids=>[], :item_quantities=>[])
  end



end