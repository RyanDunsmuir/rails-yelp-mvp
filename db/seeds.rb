# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = ['Chinese', 'Italian', 'Japanese', 'French', 'Belgian']

40.times do
  type = categories.sample
  restaurant = Restaurant.new(
    name: "#{Faker::Name.first_name}'s #{type.capitalize}",
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: type
  )
  restaurant.save
end
