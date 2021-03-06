class Cart < ApplicationRecord
  belongs_to :item
  # belongs_to :order
  validates :item_quantity, numericality: { greater_than_or_equal_to: 1 }
end