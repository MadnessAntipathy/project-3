class OrdersTables < ActiveRecord::Migration[5.2]
  def change
    create_table :orders_tables do |t|
      t.references :order
      t.references :table
      t.timestamps
    end
  end
end
