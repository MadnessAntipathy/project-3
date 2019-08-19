class AddUsernameToStaffs < ActiveRecord::Migration[5.2]
  def change
    add_column :staffs, :staffname, :string
    add_index :staffs, :staffname, unique: true
  end
end
