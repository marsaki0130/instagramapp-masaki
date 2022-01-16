# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

peter = User.create!(username: 'peter_',email: 'peter@example.com', password: 'password')
parker =User.create!(username: 'parker_',email: 'parker@example.com', password: 'password')

5.times do
  peter.articles.create!(
    content:Faker::Lorem.sentence(word_count: 30)
  )
end

5.times do
  parker.articles.create!(
    content:Faker::Lorem.sentence(word_count: 30)
  )
end