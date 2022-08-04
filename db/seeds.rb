# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(
  [
    {
      name: "佐藤立樹", 
      email: "riki_sato@cone-ntm.com", 
      company: "株式会社CONE",
      role: 2,
      password: "rikiriki88", 
      password_confirmation: "rikiriki88",
      admin: true
    },
    {
      name: "湯浅春樹", 
      email: "haruki_yuasa@cone-ntm.com", 
      company: "株式会社CONE",
      role: 1,
      password: "rikiriki88", 
      password_confirmation: "rikiriki88",
      admin: true
    },
    {
      name: "佐々野力", 
      email: "s_riki@cone-ntm.com", 
      company: "株式会社CONE",
      role: 1,
      password: "rikiriki88", 
      password_confirmation: "rikiriki88",
      admin: true
    },
    {
      name: "田中晴", 
      email: "haru_tanaka@cone-ntm.com", 
      company: "株式会社CONE",
      role: 1,
      password: "rikiriki88", 
      password_confirmation: "rikiriki88",
      admin: true
    },
    {
      name: "熊本羽那丸", 
      email: "hanamaru_kumamoto@cone-ntm.com", 
      company: "株式会社CONE",
      role: 1,
      password: "rikiriki88", 
      password_confirmation: "rikiriki88",
      admin: true
    },
    {
      name: "山口友貴", 
      email: "tomoki_yamaguchi@cone-ntm.com", 
      company: "株式会社CONE",
      role: 1,
      password: "rikiriki88", 
      password_confirmation: "rikiriki88",
    }
  ]
)
