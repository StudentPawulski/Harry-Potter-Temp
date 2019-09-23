# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
House.destroy_all
Student.destroy_all

8.times do
  # Create houses
  house = House.create(
    name: Faker::Movies::HarryPotter.unique.house,
    points: Faker::Number.within(range: 1..100)
  )
  12.times do
    house.students.build(name: Faker::Movies::HarryPotter.unique.character).save
  end
end
puts "Created: #{House.count} Houses"
puts "Created: #{Student.count} Students"
