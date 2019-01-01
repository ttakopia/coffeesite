class CreateBeans < ActiveRecord::Migration[5.1]
  def change
    create_table :beans do |t|
      t.references :art, foreign_key: true
      t.string :name
      t.string :price

      t.timestamps
    end
  end
end
