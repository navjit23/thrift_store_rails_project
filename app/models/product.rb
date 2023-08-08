class Product < ApplicationRecord
  belongs_to :category
  has_many :products_ordered
  has_many :comments
  has_one_attached :image


  def self.ransackable_associations(auth_object = nil)
    []
  end



end
