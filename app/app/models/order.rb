class Order < ActiveRecord::Base

  has_many :items_orders
  has_many :items, through: :items_orders

  # has_and_belongs_to_many :items
  # belongs_to :table
  # belongs_to :sale
end