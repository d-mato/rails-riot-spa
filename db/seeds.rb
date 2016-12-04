# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Article.create(
  [
    { date: '2016/12/05', title: 'サイト閉鎖のお知らせ', body: 'これまでお世話になりました。' },
    { date: '2016/12/04', title: 'サイトリニューアル！', body: 'サイトをリニューアルしました。これからもよろしくお願いいたします。' }
  ]
)
