class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :picture_id
      t.text    :usertext
#testing for git push
      t.timestamps
    end
  end
end
