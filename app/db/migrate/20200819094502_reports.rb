class Reports < ActiveRecord::Migration[5.2]
  def change
    create_table :reports do |t|
      t.references :sale
      t.timestamps
    end
  end
end
