class AddColumnsToMenus < ActiveRecord::Migration[5.1]
  def change
    add_column :menus, :drinkprice, :string
    add_column :menus, :foodprice, :string
    add_column :menus, :otherprice, :string
  end
end
