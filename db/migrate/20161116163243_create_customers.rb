class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.references :province, foreign_key: true
      t.string :postal_code
      t.string :email

      t.timestamps
    end
  end
end
