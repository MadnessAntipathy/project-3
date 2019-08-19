class ItemsOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :items_orders do |t|
      t.references :item
      t.references :order
      t.timestamps
    end
  end
end
