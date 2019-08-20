class AddSalesIdToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :sales_id, :integer
  end
end
