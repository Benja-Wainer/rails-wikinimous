# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Destroying existing entries...'
Article.destroy_all
puts 'Done!'

puts 'Seeding 10 random articles...'
10.times do
  article = Article.create!(
    title: Faker::Book.author,
    content: Faker::Quote.most_interesting_man_in_the_world
  )
  puts "#{article.title} has been generated"
end
puts 'Done!'
