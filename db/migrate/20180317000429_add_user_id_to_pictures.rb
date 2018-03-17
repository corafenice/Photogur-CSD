class AddUserIdToPictures < ActiveRecord::Migration[5.1]
  def up
    add_column :pictures, :user_id, :integer
  end
  def down
    remove_column :pictures, :user_id
  end
end
