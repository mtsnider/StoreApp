class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :province
  validates :status, presence: true
end
