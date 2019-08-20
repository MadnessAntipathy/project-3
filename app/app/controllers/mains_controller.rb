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

    # where("completed != true")
    render json: @orders
  end
  def complete
    p '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
    puts request.query_string
    p '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
    order1 = Order.find(request.query_string)
    order1.completed = true
    order1.save
    p '~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'
  end
end
