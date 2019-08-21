class CartsController < ApplicationController
  def index
    @carts = Cart.where(:table_id => 2)

  end

  def destroy
    @cart = Cart.find(params[:id])
    @cart.destroy

    redirect_to carts_path
  end

end