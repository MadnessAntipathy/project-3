class CreateMenuitems < ActiveRecord::Migration[5.2]
  def change
    create_table :menuitems do |t|

      t.timestamps
    end
  end
end
