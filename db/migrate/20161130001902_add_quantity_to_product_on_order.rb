class AddQuantityToProductOnOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :product_on_orders, :quantity, :integer
  end
end
