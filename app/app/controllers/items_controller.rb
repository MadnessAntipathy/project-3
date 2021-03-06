class ItemsController < ApplicationController
  layout "items"

  def index
    @items = Item.all
  end

  def new
  end

  def create
    @item = Item.new(item_params)

    @item.save
    redirect_to @item
  end

  def cart

    if Cart.where(table_id:cart_params[:table_id],item_id:cart_params[:item_id]).empty?
      @cart = Cart.new(cart_params)
      @cart.save
    else
      @cart = Cart.find_by(table_id:cart_params[:table_id],item_id:cart_params[:item_id])
      @cart.item_quantity += cart_params[:item_quantity].to_i
      @cart.save
    end
    flash[:alert] = "#{@cart.item.name} has been successfully added to cart"
    redirect_back fallback_location: items_path

  end

  def show
    puts params.inspect
    if params.has_key?(:category)
      if(params[:category] == "drinks" )
          @items = Item.where(:category => 'drinks')
      elsif (params[:category] == "starter" )
          @items = Item.where(:category => 'starter')
      elsif (params[:category] == "mains" )
          @items = Item.where(:category => 'mains')
      elsif (params[:category] == "desserts" )
          @items = Item.where(:category => 'desserts')
      elsif (params[:category] == "sides" )
          @items = Item.where(:category => 'sides')
      end
    else
      @item = Item.find(params[:id])
    end
  end

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
private
  def item_params
    params.require(:item).permit(:name, :category, :price, :picture)
  end

  def cart_params
    params.require(:cart).permit(:table_id, :item_id, :item_quantity)
  end
end