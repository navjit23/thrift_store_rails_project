class Category < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "desc", "id", "name", "updated_at"]
  end

  has_many :products
  validates :name, presence: true
end
