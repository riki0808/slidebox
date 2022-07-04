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
      name: "sasano", 
      email: "aaa@aaa.com", 
      company: "株式会社CONE",
      password: "rikiriki88", 
      password_confirmation: "rikiriki88"
    },
    {
      name: "佐藤立樹", 
      email: "qqq@qqq.com", 
      company: "株式会社SATO",
      password: "rikiriki88", 
      password_confirmation: "rikiriki88"
    }
  ]
)
