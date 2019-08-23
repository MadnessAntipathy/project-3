class CartsController < ApplicationController
  layout "items"
  def index
    @carts = Cart.where(:table_id => session[:table])

  end

  def show
    @table = Table.find(session[:table])
    @purchases = Purchase.all
  end

  def destroy
    @cart = Cart.find(params[:id])
    @cart.destroy

    redirect_to carts_path
  end

end
