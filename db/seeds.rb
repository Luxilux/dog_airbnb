# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
  dog = Dog.create(dog_name: Faker::LordOfTheRings.character)
end

10.times do
  dogsitter = Dogsitter.create(dogsitter_name: Faker::LordOfTheRings.character)
end

10.times do
  stroll = Stroll.create(dogsitter_id: rand(1..10), dog_id: rand(1..10))
end
