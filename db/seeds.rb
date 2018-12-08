# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sample = Art.create!(storename: "shohei")
sample.images = [
	Rails.root.join("db/image/1.jpg").open,
	Rails.root.join("db/image/2.jpg").open,
	Rails.root.join("db/image/3.jpg").open,
	Rails.root.join("db/image/4.jpg").open,
	Rails.root.join("db/image/5.jpg").open,
	Rails.root.join("db/image/6.jpg").open,
	Rails.root.join("db/image/7.jpg").open
]
sample.save!


5.times do |i| 
Art.seed do |s|
	s.id				= i+1
	s.storename 		= "#{i+1} + Cafe"
	s.address			= "大阪府吹田市"
	s.tel				= "00-0000-0000"
	s.web				= "URL"
	s.time				= "09:00〜17:00"	
	s.day				= "日曜日"
	s.area				= "大阪"
	s.how				= "ドリップ"
	s.tag_list			= "大阪"
	s.coffeebean_list 	= "ブルーマウンテン"
	s.content			= "この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を"
	s.description 		= "大阪駅から徒歩5分"
	s.inttitle1			= "タイトルのサンプル"
	s.intcontent1		= "この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ、量、字間、行間等を確認するために入れています。この文章はダミーです。文字の大きさ"	
	s.inttitle2			= "タイトルのサンプル"
	s.intcontent2		= "サンプル"
	s.intprofname		= "サンプルネーム"
	s.intprofcontent	= "サンプルコンテンツ"
	s.intprofmenu		= "サンプルメニュー"
	s.imagesprof		= "#{Rails.root}/db/image/1.jpg"
	s.images            = images
end
end