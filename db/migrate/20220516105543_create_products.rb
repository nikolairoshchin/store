class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :sku
      t.string :part_number
      t.string :name
      t.string :unit
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
