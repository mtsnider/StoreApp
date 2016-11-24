class Uploadedimage < ApplicationRecord
mount_uploader :image, ImageUploader

end
