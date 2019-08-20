class ItemsController < ApplicationController

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

private
  def item_params
    params.require(:item).permit(:name, :category, :price, :picture)
  end

end