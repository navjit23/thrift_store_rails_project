class Customer < ApplicationRecord
  has_many :cards
  has_many :comments
  has_many :orders
end
