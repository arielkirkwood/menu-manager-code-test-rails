class CreateMenuItems < ActiveRecord::Migration[7.0]
  def change
    create_table :menu_items do |t|
      t.references :menu, null: false, foreign_key: true
      t.references :dish, null: false, foreign_key: true

      t.timestamps
      t.index [:menu_id, :dish_id], unique: true
    end

    remove_reference :dishes, :menu, foreign_key: true
  end
end
