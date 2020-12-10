# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "---starting seeds----"

10.times do |a|
price = [10, 30, 50, 150].sample
guest = [2, 3, 4, 5, 10].sample

a = Flat.new(name: Faker::Space.star , address: Faker::Address.full_address, description: Faker::ChuckNorris.fact, price_per_night: price, number_of_guests: guest )
puts "inserting #{a.name}"
a.save!

end
puts "---seeds ending---"
