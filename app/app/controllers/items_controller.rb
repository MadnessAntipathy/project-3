class ItemsController < ApplicationController

  def index
    @items = Item.all
    @category = Item.category

    if params.has_key?(:category)
      if(params[:category] == "starter" )
          @items = Item.includes(:category).where(category: {'starters'})
      else
          @customers = Customer.all.joins(:customers_kopis).group(:customer_id,:id).order('count desc').select("customers.id,customers.name,customer_id,count(customer_id) as count")
      end
    else
      # get all items
      @items = Item.all
    end

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

private
  def item_params
    params.require(:item).permit(:name, :category, :price, :picture)
  end

end