class Notifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.integer :table_id
      t.timestamps
    end
  end
end
