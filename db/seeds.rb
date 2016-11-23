# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Seed in progress ..."

10.times do

  name         = Faker::Company.name
  phone_number = Faker::PhoneNumber
  address      = Faker::Address.street_address
  category     = ["chinese", "italian", "japanese", "french", "belgian"].sample
  Restaurant.create(
    name:         name,
    phone_number: phone_number,
    address:      address,
    category:     category
  )
end

puts "Seed done !"
