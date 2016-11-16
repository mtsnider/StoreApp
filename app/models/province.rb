class Province < ApplicationRecord
  has_many :customers
  has_many :provinces
  validates :name, presence: true
end
