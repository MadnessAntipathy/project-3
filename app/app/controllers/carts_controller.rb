class CartsController < ApplicationController
  def index
    @carts = Cart.where(:table_id => session[:table])

  end

  def show
    @table = Table.find(params[:id])
  end

  def destroy
    @cart = Cart.find(params[:id])
    @cart.destroy

    redirect_to carts_path
  end

end