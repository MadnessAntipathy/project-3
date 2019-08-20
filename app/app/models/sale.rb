class Sale < ApplicationRecord
  # belongs_to :table
  has_many :orders
  # belongs_to :report
end
