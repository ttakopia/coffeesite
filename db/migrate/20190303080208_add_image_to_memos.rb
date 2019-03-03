class AddImageToMemos < ActiveRecord::Migration[5.1]
  def change
    add_column :memos, :images, :string
    add_column :memos, :shortcontent, :string
  end
end
