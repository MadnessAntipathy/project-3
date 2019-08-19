class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.references :order
      t.float :totalsale
      t.timestamps
    end
  end
end
