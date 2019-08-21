class MainsController < ApplicationController
  def index
    puts '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
    puts current_staff.inspect
  end
  def kitchen
    @orders = Order.where(completed: nil)
  end
  def orders
    puts "working here~"
    @orders = Order.all
    puts @orders.inspect
    render json: @orders
  end
  def complete
    order = Order.find(request.query_string)
    order.completed = true
    order.save
  end
  def table
    @tables = Table.all
  end
  def assign
    @table = Table.find(params[:format])
    @table.active_status = "true"
    @table.save
    redirect_to items_path(params[:format])
  end
  def release
    @table = Table.find(params[:format])
    @table.active_status = ""
    @sales = Sale.new
    @sales.save
    orders = Order.where(table_id:params[:format])
    orders.each do |order|
      order.sales_id = @sales.id
      order.table_id = nil
      order.save
    end
    @table.save
    redirect_to @table
  end
  def destroy
    @tables = Table.all
    @tables.destroy_all
    redirect_to '/table'
  end
end
