
class Item < ApplicationRecord
  has_and_belongs_to_many :orders
  # has_many :carts


  # has_many :items_orders
  # has_many :orders, through: :items_orders

  # has_and_belongs_to_many :orders

end