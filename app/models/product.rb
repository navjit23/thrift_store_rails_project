class Product < ApplicationRecord

  def self.ransackable_attributes(auth_object = nil)
    ["category_id", "created_at", "desc", "id", "name", "price", "updated_at"]
  end

  belongs_to :category
  has_many :products_ordered
  has_many :comments
  has_one_attached :image






end
