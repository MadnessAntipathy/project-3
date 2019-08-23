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
  def addnotification
    @addnotification = Notification.new(table_id: request.query_string.to_i)
    @addnotification.save
  end
  def notifications
    @notifications = Notification.where('created_at >= :ten_seconds_ago', :ten_seconds_ago => Time.now - 10.seconds)
    Notification.where('created_at <= :ten_seconds_ago', :ten_seconds_ago => Time.now - 10.seconds).destroy_all
    render json: @notifications
  end

end
