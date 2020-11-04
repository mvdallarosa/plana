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


puts "Creating all challenges..."

challenge_attributes = [
{ category: "plastic-free",
  description: "avoid all forms of packaging that involve plastic",
  information: "Plastic never bio-degrades and disrupts our endocrine system, and is suspected to cause cancer, infertility, and many other diseases. Managing your waste has a direct positive impact on the healthcare of our ecosystems, especially the ocean. The Plastic Free Challenge is designed to raise awareness and promote solutions."
  duration: "28 days",
  impact: 0.50.to_f },

{ category: "plant-based",
  description: "no meat / fish / dairy / eggs -- fully plant-based",
  information: "At Plana, we believe that eating mostly plant-based whole foods for three weeks (or longer) is the perfect way to make a positive impact on our environment by saving CO2. On average diet accounts for 40% of our carbon footprint."
  duration: "28 days",
  impact: 1.01.to_f
}]

challenge_attributes.each do |attributes|
  Challenge.create(attributes)
end

puts "Finished!"

# { category: "no-red-meat",
#   description: "avoid Red Meat",
#   duration: "28 days",
#   impact: 0.47.to_f },
# { category: "vegetarian",
#   description: "avoid Meat/Fish",
#   duration: "28 days",
#   impact: 0.79.to_f },



