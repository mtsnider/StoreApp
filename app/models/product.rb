class Product < ApplicationRecord
  belongs_to :category
  validates :name, :description, :price, :image, presence: true
  #searchkick
  mount_uploader :image, ImageUploader

def self.search(search)
  where("name LIKE ?", "%#{search}%")
  where("description LIKE ?", "%#{search}%")
end


end
