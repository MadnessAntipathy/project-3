class ReportsController < ApplicationController
   def index
    @sales = Sale.all

    @total = @sales.where(created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day).sum(:totalsale)

  end
end