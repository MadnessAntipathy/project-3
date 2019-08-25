class CartsController < ApplicationController
  layout "items"
  def index
    @carts = Cart.where(:table_id => session[:table]).order(:id)

  end

  def show
    @table = Table.find(session[:table])
    @purchases = Purchase.all
  end

  def update
    puts "add to cart"
    p params
    # p request.query_string
    puts params[:cart][:item_quantity]
      @cart = Cart.find(params[:id])

      @cart.update(:item_quantity => (params[:cart][:item_quantity].to_i))
    puts "finish update"

    # redirect_to carts_path
    redirect_back fallback_location: carts_path
  end

  def destroy
    @cart = Cart.find(params[:id])

    @cart.destroy

    redirect_to carts_path
  end

  private

  def cart_params
    params.require(:cart).permit(:table_id, :item_id, :item_quantity)
  end

end