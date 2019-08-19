class Orders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.boolean :completed
      t.references :table
      
      t.timestamps
    end
  end
end
