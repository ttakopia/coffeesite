class AddImagesToArts < ActiveRecord::Migration[5.1]
  def change
    add_column :arts, :images, :string
    add_column :arts, :imagesprof, :string
  end
end
