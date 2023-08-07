class User < ApplicationRecord
  # Devise modules...
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  # Additional attributes
  attr_accessor :name, :date_of_birth, :phone_number, :address
  def self.ransackable_associations(auth_object = nil)
    []
  end
end
