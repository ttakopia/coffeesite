class AddCountToArt < ActiveRecord::Migration[5.1]
  def change
  	add_column :arts, :favorites_count, :integer
  end
end
