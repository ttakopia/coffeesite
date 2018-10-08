
samples = [
	Rails.root.join("db/image/1.jpg").open,
	Rails.root.join("db/image/2.jpg").open,
	Rails.root.join("db/image/3.jpg").open,
	Rails.root.join("db/image/4.jpg").open,
	Rails.root.join("db/image/5.jpg").open,
	Rails.root.join("db/image/6.jpg").open,
	Rails.root.join("db/image/7.jpg").open
]

Art.seed do |s|
	s.id				= 1
	s.storename 		= "First Cafe"
	s.address			= "大阪府吹田市津雲台1-1-4"
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
	s.images            = samples
end

Art.seed do |s|
	s.id				= 2
	s.storename 		= "Second Cafe"
	s.address			= "大阪府吹田市津雲台6-6-8"
	s.tel				= "00-0000-0000"
	s.web				= "URL"
	s.time				= "09:00〜17:00"	
	s.day				= "日曜日"
	s.area				= "大阪"
	s.how				= "ドリップ"
	s.tag_list			= "兵庫"
	s.coffeebean_list 	= "コピルアク"
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
	s.images            = samples
end

Art.seed do |s|
	s.id				= 3
	s.storename 		= "Third Cafe"
	s.address			= "兵庫県神戸市須磨区東落合"
	s.tel				= "00-0000-0000"
	s.web				= "URL"
	s.time				= "09:00〜17:00"	
	s.day				= "日曜日"
	s.area				= "大阪"
	s.how				= "ドリップ"
	s.tag_list			= "京都"
	s.coffeebean_list 	= "アラビカコーヒー"
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
	s.images            = samples
end


Art.seed do |s|
	s.id				= 4
	s.storename 		= "Fourth Cafe"
	s.address			= "大阪府豊中市"
	s.tel				= "00-0000-0000"
	s.web				= "URL"
	s.time				= "09:00〜17:00"	
	s.day				= "日曜日"
	s.area				= "大阪"
	s.how				= "ドリップ"
	s.tag_list			= "和歌山"
	s.coffeebean_list 	= "アラビカコーヒー"
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
	s.images            = samples
end