class Order < ApplicationRecord
  has_many :menuitem
  belongs_to :table
end
