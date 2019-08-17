class Customer < ApplicationRecord
  has_many :reservations
  has_many :orders
end
