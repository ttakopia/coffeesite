class AddMimagesToArts < ActiveRecord::Migration[5.1]
  def change
    add_column :arts, :mimages, :json
  end
end
