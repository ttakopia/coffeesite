
samples = [
	Rails.root.join("app/assets/images/1-1.jpg").open,
	Rails.root.join("app/assets/images/1-2.jpg").open,
	Rails.root.join("app/assets/images/1-3.jpg").open,
	Rails.root.join("app/assets/images/1-4.jpg").open,
	Rails.root.join("app/assets/images/1-5.jpg").open,
	Rails.root.join("app/assets/images/1-6.jpg").open,
	Rails.root.join("app/assets/images/1-7.jpg").open
]

Art.seed do |s|
	s.id				= 1
	s.storename 		= "Kota Tua Kopi"
	s.address			= "Jl. Saleh Sungkar No.16F, Kawasan Kota Tua, Bintaro, Ampenan, Kota Mataram"
	s.tel				= "0878-6567-2974"
	s.web				= "kotatua-kopi.business.site"
	s.time				= "10:00~24:00"	
	s.day				= "Mon-Sun"
	s.area				= "Lombok(Indonesia)"
	s.how				= "Filter Coffee"
	s.tag_list			= "Lombok(Indonesia)"
	s.coffeebean_list 	= "Lombok Sembal LIN"
	s.content			= "ロンボク島はマタラム地区にある自家焙煎カフェ。インドネシアのコーヒー豆を中心に取り扱っており、ロンボク島産のコーヒー豆もあり。抽出方法もフィルター・サイフォン・フレンチぷれすなど多数から選べることができ、本格派のカフェ。店長のEviさんも気さくで良い雰囲気のカフェであり、ロンボク島でおすすめのカフェ"
	s.description 		= "ストアが立ち並ぶ中にあり、少しわかりにくい。看板を目当てに。"
	s.imagesprof		= "#{Rails.root}/app/assets/images/1-1.jpg"
	s.mimages            = samples
	s.latitude			= ""
    s.longitude			= ""
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
	s.imagesprof		= "#{Rails.root}/app/assets/images/1-1.jpg"
	s.mimages            = samples
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
	s.imagesprof		= "#{Rails.root}/app/assets/images/1-1.jpg"
	s.mimages            = samples
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
	s.imagesprof		= "#{Rails.root}/app/assets/images/1-1.jpg"
	s.mimages            = samples
end