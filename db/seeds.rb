# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning database..."
Guide.delete_all
Painting.delete_all
Tour.delete_all
TourPainting.delete_all



require 'faker'

puts "create 10 fake paintings"

10.times do

  painting = Painting.new(
    title: Faker::Name.first_name,
    artist: Faker::Artist.name,
    date: Faker::Date.in_date_period(year: 2018, month: 2)
      )
  painting.save!

  p painting

  guide = Guide.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Quote.yoda, email: Faker::Internet.email, password: Faker::Number.number(digits: 10))
  guide.save!

  p guide

  tour = Tour.new(
        title: Faker::Music::Opera.verdi,
        description: Faker::Quote.yoda,
        duration: rand(10..60),
        total_rate: rand(0..5),
        date: Faker::Date.in_date_period(year: 2018, month: 2),
        languages: Faker::ProgrammingLanguage.name
      )
  tour.guide = guide
  tour.save


  tour_painting = TourPainting.create
  # tour_painting.tour = tour
  # tour_painting.painting = painting
  # tour_painting.save

  p tour_painting

  # tour.tour_paintings = tour_painting
  # tour.save

  p tour

end

puts 'Finished!'
