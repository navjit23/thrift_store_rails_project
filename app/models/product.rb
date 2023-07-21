class Product < ApplicationRecord
  has_many:prices
  belongs_to:categories
  belongs_to:products_ordered
end
