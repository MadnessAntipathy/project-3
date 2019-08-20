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
    redirect_to root_path
  end
  def show
    @table = Table.find(params[:id])
  end

  def show
    @table = Table.find(params[:id])
  end

end