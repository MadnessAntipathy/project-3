class Carts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|
      t.references :table
      t.references :item
      t.integer :item_quantity

      t.timestamps
    end
  end
end