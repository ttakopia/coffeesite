module ApplicationHelper
	include ActsAsTaggableOn::TagsHelper
	def default_meta_tags
    {
      site: 'COFFEE SEEKER',
      title: 'HOME',
      reverse: true,
      charset: 'utf-8',
      description: 'Coffee Seekerはインドネシアのジャカルタを中心としたおいしいコーヒー・おしゃれなカフェを紹介するサイトです。
      				世界中のカフェが提供するスペシャリティコーヒーを中心に紹介していき、一人でも多くの人が
      				コーヒーの魅力に気づき、自分好みのコーヒー豆を見つけるきっかけになればうれしいです。
      				また、コーヒーに関する豆知識もコラム形式でご紹介していきますので、併せてお楽しみ下さい.',
      keywords: 'ジャカルタ,インドネシア,スペシャリティーコーヒー,カフェ,焙煎',
      canonical: request.original_url,
      separator: '|',
      icon: [
        { href: image_url('coffeeseeker.ico') },
        { href: image_url('coffeeseeker.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/png' },
      ],
      og: {
        site_name: :site,
        title: :title,
        description: :description,
        type: 'website',
        url: request.original_url,
        image: image_url('one.jpg'),
        locale: 'ja_JP',
      }
    }
  end
end
