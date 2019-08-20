class Order < ApplicationRecord
  has_and_belongs_to_many :items
  # belongs_to :table
  # belongs_to :sale
end
