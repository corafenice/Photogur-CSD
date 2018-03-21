class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.references :user, foreign_key: true
      t.references :picture, foreign_key: true
      t.string :liked

      t.timestamps
    end
  end
end
