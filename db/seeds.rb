# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#destroy all when you start seed file

puts 'Clearing Database'
Movie.destroy_all
List.destroy_all

puts "Creating movies..."

20.times do
  Movie.create(
    title: Faker::FunnyName.name,
    overview: Faker::Lorem.paragraphs,
    poster_url: "www.#{Faker::Movie.title}.com",
    rating: rand(0..5)
  )
end

puts "Creating lists..."

10.times do
  List.create(
    name: Faker::Music.genre
  )
end

puts "Finished!"
puts "Made #{Movie.count} movies"
puts "Made #{List.count} lists"
