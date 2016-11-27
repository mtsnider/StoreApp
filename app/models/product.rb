class Product < ApplicationRecord
  belongs_to :category
  validates :name, :description, :price, :image, presence: true

  mount_uploader :image, ImageUploader


  #def self.search(query)
  #    "name LIKE ? OR description LIKE ?", "%#{query}%"
  #  end
end
