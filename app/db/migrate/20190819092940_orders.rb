class Orders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.boolean :completed
      t.integer :table

      t.timestamps
    end
  end
end
