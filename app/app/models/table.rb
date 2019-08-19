class Table < ApplicationRecord
  belongs_to :sale
  has_many :orders
end
