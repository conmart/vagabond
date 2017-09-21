# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
# User.destroy_all
#
# 5.times do
#   User.create({
#     name: FFaker::Name.name,
#     current_city: FFaker::Address.city,
#     image: "https://maxcdn.icons8.com/Share/icon/Users//user_male_circle_filled1600.png",
#     email: FFaker::Internet.email,
#     password:
#
#     })
Post.destroy_all
5.times do
  Post.create({
    title: FFaker::Lorem.word,
    message: FFaker::Lorem.sentence
    })
  end

City.destroy_all
  City.create({
    name: "San Francisco",
    image: "https://images1.apartments.com/i2/hFgYoT0zCoCAdiUcUR22kOmdhv7VosGC2AghT5uI12w/110/san-francisco-ca-the-iconic-golden-gate-bridge.jpg"
    })
