class AddColumnToArts < ActiveRecord::Migration[5.1]
  def change
  	add_column :arts, :storename, :string
	add_column :arts, :address,   :string
	add_column :arts, :tel, 	  :string
	add_column :arts, :web,		  :string
	add_column :arts, :time,      :string
	add_column :arts, :day,		  :string
	add_column :arts, :area,      :string
	add_column :arts, :how,       :string
	add_column :arts, :inttitle1,   :string
	add_column :arts, :intcontent1,   :string
	add_column :arts, :inttitle2,   :string
	add_column :arts, :intcontent2,   :string
	add_column :arts, :intprofname,   :string
	add_column :arts, :intprofcontent,   :string
	add_column :arts, :intprofmenu,   :string
  end
end
