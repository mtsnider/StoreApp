class Customer < ApplicationRecord
  belongs_to :province
  has_many :orders
  validates :first_name, :last_name, :address, :city, :postal_code, :email, presence: true
end
