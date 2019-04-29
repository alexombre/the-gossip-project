# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  city = City.create!(name: Faker::Nation.capital_city, zip_code: Faker::Address.zip_code)
end

10.times do
  tag = Tag.create!(title: Faker::Quote.singular_siegler)
end

10.times do
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Books::Dune.saying, email: Faker::Internet.email, age: Faker::Number.between(18, 50), city_id: rand(1..10))
end

20.times do
  gossip = Gossip.create!(title: Faker::Movies::HitchhikersGuideToTheGalaxy.specie, content: Faker::Books::Dune.quote("baron_harkonnen"), user_id: rand(User.first.id..User.last.id))
end

20.times do
  join_table_gossip_tag = JoinTableGossipTag.create!(gossip_id: rand(Gossip.first.id..Gossip.last.id), tag_id: rand(Tag.first.id..Tag.last.id))
end

20.times do
  mp = PrivateMessage.create!(sender_id: rand(1..10), recipient_id: rand(1..10), content: Faker::Books::Dune.quote)
end
