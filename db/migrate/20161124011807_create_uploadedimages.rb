class CreateUploadedimages < ActiveRecord::Migration[5.0]
  def change
    create_table :uploadedimages do |t|

      t.timestamps
    end
  end
end
