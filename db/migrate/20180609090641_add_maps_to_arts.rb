class AddMapsToArts < ActiveRecord::Migration[5.1]
  def change
    add_column :arts, :description, :string
    add_column :arts, :latitude, :float
    add_column :arts, :longitude, :float
  end
end
