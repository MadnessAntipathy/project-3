class ItemsController < ApplicationController
  def index
    p '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
    p params[:format]
    session[:table] = params[:format]
    puts session[:table]
    p '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
    @items = Item.all

  end

  def new
  end

  def create
    @item = Item.new(item_params)

    @item.save
    redirect_to @item
  end

  def show
    @item = Item.find(params[:id])
  end

  def optionajax

      p JSON.parse(params[:category])
      cat = JSON.parse(params[:category].downcase)
      @items = Item.where(:category => cat)
      p @items
      respond_to do |format|
          format.json { render json: @items.to_json }
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
end
