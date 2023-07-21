class ProductsOrdered < ApplicationRecord
  belongs_to:orders
  has_many:products
end
