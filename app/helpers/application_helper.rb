module ApplicationHelper
  def page_title(title = '')
    base_title = ' -分担ルーレット・BBQver.- '
    title.empty? ? base_title : title + base_title
  end

  def default_meta_tags
    {
      site: '分担ルーレット',
      title: 'BBQでの分担を楽しく効率的に!',
      reverse: true,
      charset: 'utf-8',
      description: '分担ルーレット~BBQver.~は、BBQでの役割分担したいときに使用するルーレットです。その他、決まった分担を管理するToDoリスト機能や分担をLINEで通知するLINE通知機能などもあります',
      keywords: 'BBQ, 分担, 大人数, パーティー, イベント',
      canonical: request.original_url,
      separator: '|',
      icon: [
        { href: image_url('favicon.jpg') },
        { href: image_url('favicon.jpg'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' }
      ],
      og: {
        site_name: :site,
        title: :title,
        description: :description,
        type: 'website',
        url: request.original_url,
        image: image_url('ogp.jpg'),
        locale: 'ja_JP',
      },
      twitter: {
        card: 'summary_large_image',
        site: '@mizuki_RUNTEQ24',
      }
    }
  end
end
