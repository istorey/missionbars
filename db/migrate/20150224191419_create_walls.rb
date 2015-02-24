class CreateWalls < ActiveRecord::Migration
  def change
    create_table :walls do |t|
      t.integer :user_id
      t.integer :image_id

      t.timestamps null: false
    end
  end
end
