class AddImadeToUploadedimages < ActiveRecord::Migration[5.0]
  def change
    add_column :uploadedimages, :image, :string
  end
end
