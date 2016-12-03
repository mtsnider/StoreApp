class Product < ApplicationRecord
  belongs_to :category
  has_many :order_items
  validates :name, :description, :price, :image, presence: true

  mount_uploader :image, ImageUploader

  def self.search(search)
    where('name LIKE ?', "%#{search}%")
    where('description LIKE ?', "%#{search}%")
  end
end
