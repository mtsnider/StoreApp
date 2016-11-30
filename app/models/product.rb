class Product < ApplicationRecord
  belongs_to :category
  belongs_to :ProductsOnOrder
  validates :name, :description, :price, :image, presence: true
  #searchkick
  mount_uploader :image, ImageUploader

   default_scope { where(active: true) }

def self.search(search)
  where("name LIKE ?", "%#{search}%")
  where("description LIKE ?", "%#{search}%")
end


end
