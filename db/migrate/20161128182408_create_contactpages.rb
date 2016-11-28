class CreateContactpages < ActiveRecord::Migration[5.0]
  def change
    create_table :contactpages do |t|
      t.text :body

      t.timestamps
    end
  end
end
