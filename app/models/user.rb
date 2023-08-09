class User < ApplicationRecord
  # Devise modules...
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :addresses
  # Additional attributes
  attr_accessor :name, :date_of_birth, :phone_number, :address, :postal, :province
  def self.ransackable_associations(auth_object = nil)
    []
  end
  validates :name, presence: true, length: { minimum: 3 }
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }

end
