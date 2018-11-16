require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
Service.destroy_all
Handy.destroy_all
User.destroy_all
HandyService.destroy_all
Ad.destroy_all
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Service.create(name: "Painting")
Service.create(name: "Wall Mounting & Hanging")
Service.create(name: "Home Cleaning")
Service.create(name: "Furniture Assembly")
Service.create(name: "Plumbing")
Service.create(name: "Electrical")
Service.create(name: "Moving")
Service.create(name: "Smart Home & Security")
Service.create(name: "Yardwork")
Service.create(name: "General Handyman")

100.times {
  User.create(name: Faker::FunnyName.name, username: Faker::Internet.user_name, password: '12345')
}

30.times {
  Handy.create(name: Faker::FunnyName.name, username: Faker::Internet.user_name)
}

120.times {
  HandyService.create(service_id: Faker::Number.between(1, 10), handy_id: Faker::Number.between(1, 10))
}

20.times {
  Ad.create(service_id: Faker::Number.between(1, 10), user_id: Faker::Number.between(1, 10), handy_id: Faker::Number.between(1, 30), rating: Faker::Number.between(1, 5))
}
