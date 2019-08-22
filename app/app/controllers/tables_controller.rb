class TablesController < ApplicationController
  def index
    @tables = Table.all
    render json: @tables
  end
  def new
  end
  def create
    puts '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
    puts current_staff.inspect
    puts "~~~~~~~~~~~~~~~~~~~~~~~"
    @table = Table.new
    @table.save
    redirect_to '/table'
  end
  def show
    @table = Table.find(params[:id])
    @purchases = Purchase.all
  end
  def destroy
    @table = Table.find(params[:format])
    @table.destroy
    redirect_to '/table'
  end


end
