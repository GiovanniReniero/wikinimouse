# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Seeding......."


24.times do 
    new_article = Article.new(title: Faker::Mountain.name, content: Faker::Lorem.paragraph_by_chars(number: 556, supplemental: false) )
    new_article.save
  end

# 10.times do
    # food =  Faker::Food.dish
    # lorem = Faker::Lorem.paragraphs
    # # new_article = Article.new(title: "#{food}", content: "#{lorem}" )
    # new_article.save
  # end


puts "SUCCESS...seeds planted!!!"

