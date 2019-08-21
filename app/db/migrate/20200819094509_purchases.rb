class Purchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.integer :order_id
      t.integer :item_id
      t.integer :item_quantity
      t.timestamps
    end
  end
end
