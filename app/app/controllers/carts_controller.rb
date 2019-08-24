class CartsController < ApplicationController
  layout "items"
  def index
    @carts = Cart.where(:table_id => session[:table])

  end

  def show
    @table = Table.find(session[:table])
    @purchases = Purchase.all
  end

  def update
    puts "add to cart"
    p params
    p request.query_string
      @cart = Cart.find(params[:id])

      @cart.update(:item_quantity => params[:quantity])
    puts "finish update"

    respond_to do |format|
        format.html { render inline: "location.reload();" }
    end
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