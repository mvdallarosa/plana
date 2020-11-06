# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# puts "Creating Plastic-Free Challenge..."
#   category: "plastic-free"
#   description: "avoid all forms of packaging that involve plastic"
#   duration: "28 days"
#   impact: 0.50.to_f
# puts 'Finished!'

# puts "Creating No Red Meat Challenge..."
#   category: "no-red-meat"
#   description: "avoid Red Meat"
#   duration: "28 days"
#   impact: 0.47.to_f
# puts 'Finished!'

# puts "Creating Vegetarian Challenge..."
#   category: "vegetarian"
#   description: "avoid Meat/Fish"
#   duration: "28 days"
#   impact: 0.79.to_f
# puts 'Finished!'

# puts "Creating Plant-Based Challenge..."
#   category: "plant-based"
#   description: "no meat / fish / dairy / eggs -- fully plant-based"
#   duration: "28 days"
#   impact: 1.01.to_f
# puts 'Finished!'

# { category: "no-red-meat",
#   description: "avoid Red Meat",
#   duration: "28 days",
#   impact: 0.47.to_f },
# { category: "vegetarian",
#   description: "avoid Meat/Fish",
#   duration: "28 days",
#   impact: 0.79.to_f },

require 'json'
require 'open-uri'
require 'pry'

api_key = "6027980db6444536ae0f8b6f7517cbd2"
offset = 0
t_count = 0
url = "https://api.spoonacular.com/recipes/complexSearch?diet=vegan&number=100&offset=#{offset}&apiKey=#{api_key}&includeNutrition=true."
recipes_serialized = open(url).read
recipes = JSON.parse(recipes_serialized)
# my_recipes = recipes
# Pry::ColorPrinter.pp(recipes)
results = recipes["results"]
results.each do |recipe|
  api_key = "6027980db6444536ae0f8b6f7517cbd2"
  url_info ="https://api.spoonacular.com/recipes/#{recipe["id"].to_i}/information?apiKey=#{api_key}&includeNutrition=true"
  info_serialized = open(url_info).read
  info = JSON.parse(info_serialized)
  # Pry::ColorPrinter.pp(info)
  category = Category.where(name: 'plant-based recipes').first
  item = Item.new(
    name: info["title"],
    description: info["readyInMinutes"],
    url: info["sourceUrl"]
    )
  item.category = category
  file = info["image"]
  item.photo.attach(io: file, filename: "recipe#{t_count}.png", content_type: 'image/png')
  t_count += 1
  user.save
end





