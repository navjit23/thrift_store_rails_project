class Product < ApplicationRecord
  belongs_to :category
  has_many :products_ordered
  has_many :comments






end
