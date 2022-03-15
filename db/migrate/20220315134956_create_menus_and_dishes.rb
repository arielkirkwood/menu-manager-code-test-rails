class CreateMenusAndDishes < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|
      t.string :name

      t.timestamps
    end

    create_table :dishes do |t|
      t.string :name
      t.integer :price
      t.references :menu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
