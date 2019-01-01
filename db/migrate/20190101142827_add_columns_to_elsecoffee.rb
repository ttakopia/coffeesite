class AddColumnsToElsecoffee < ActiveRecord::Migration[5.1]
  def change
    add_column :elsecoffees, :elsename, :string
  end
end
