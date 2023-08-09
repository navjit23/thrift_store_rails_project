class Address < ApplicationRecord
  belongs_to :user
  validates :province, presence: true
end
