class Product < ApplicationRecord
  has_many :prices
  belongs_to :category
  has_many :products_ordered
  has_many :comments

  before_save :create_price_entry, if: :new_record?

  private

  def create_price_entry
    self.prices.create(price: self.price, from_date: Time.now, to_date: nil)
  end

end
