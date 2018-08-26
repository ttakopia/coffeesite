class CreateMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :menus do |t|
      t.references :art, foreign_key: true
      t.string :drink
      t.string :food
      t.string :other
     
      t.timestamps
    end
  end
end
