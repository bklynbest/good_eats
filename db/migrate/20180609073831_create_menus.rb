class CreateMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :menus do |t|
      t.references :restaurant, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
