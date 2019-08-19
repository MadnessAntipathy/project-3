class TablesController < ApplicationController
  def index
    @tables = Table.all
    render JSON: @tables
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

end
