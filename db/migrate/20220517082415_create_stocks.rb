class CreateStocks < ActiveRecord::Migration[7.0]
  def change
    create_table :stocks do |t|
      t.integer :product_id
      t.integer :warehouse_id
      t.decimal :qty, precision: 8, scale: 2

      t.timestamps
    end
  end
end
