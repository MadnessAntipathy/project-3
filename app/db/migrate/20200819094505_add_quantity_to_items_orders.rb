class AddQuantityToItemsOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :items_orders, :item_quantity, :integer
  end
end
