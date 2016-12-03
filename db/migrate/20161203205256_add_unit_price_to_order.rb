class AddUnitPriceToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :unit_price, :decimal
  end
end
