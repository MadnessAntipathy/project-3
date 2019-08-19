class Items < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.text :category
      t.integer :price
      t.text :picture
      t.timestamps
    end
  end
end
  
