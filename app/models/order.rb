class Order < ApplicationRecord
  belongs_to :customers
  has_many :products_ordered
end
