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



Favorite.destroy_all
Commitment.destroy_all
Footprint.destroy_all
User.destroy_all

puts "Creating 11 users..."

user_attributes = [
  { first_name: "Katrina",
    last_name: "Robles",
    username: "katrina",
    city: "Milano",
    email: "kat@plana.com",
    password: "123456",
    form: {
      mobility1: ("A".."C").to_a.sample,
      mobility2: ("A".."C").to_a.sample,
      food1: ("A".."C").to_a.sample,
      food2: ("A".."C").to_a.sample,
      household1: ("A".."C").to_a.sample,
      household2: ("A".."C").to_a.sample,
      household3: ("A".."C").to_a.sample
    }
  },

  { first_name: "Enrico",
    last_name: "Favaro",
    username: "enrico",
    city: "Milano",
    email: "enrico@plana.com",
    password: "123456",
    form: {
      mobility1: ("A".."C").to_a.sample,
      mobility2: ("A".."C").to_a.sample,
      food1: ("A".."C").to_a.sample,
      food2: ("A".."C").to_a.sample,
      household1: ("A".."C").to_a.sample,
      household2: ("A".."C").to_a.sample,
      household3: ("A".."C").to_a.sample
    }
  },

  { first_name: "Lily",
    last_name: "Walch",
    username: "lily",
    city: "Milano",
    email: "lily@plana.com",
    password: "123456",
    form: {
      mobility1: ("A".."C").to_a.sample,
      mobility2: ("A".."C").to_a.sample,
      food1: ("A".."C").to_a.sample,
      food2: ("A".."C").to_a.sample,
      household1: ("A".."C").to_a.sample,
      household2: ("A".."C").to_a.sample,
      household3: ("A".."C").to_a.sample
    }
  },

  { first_name: "Giulia",
    last_name: "Martinelli",
    username: "giulia",
    city: "Milano",
    email: "giulia@plana.com",
    password: "123456",
    form: {
      mobility1: ("A".."C").to_a.sample,
      mobility2: ("A".."C").to_a.sample,
      food1: ("A".."C").to_a.sample,
      food2: ("A".."C").to_a.sample,
      household1: ("A".."C").to_a.sample,
      household2: ("A".."C").to_a.sample,
      household3: ("A".."C").to_a.sample
    }
  },

  { first_name: "Marco",
    last_name: "Checchi",
    username: "marco",
    city: "Milano",
    email: "marco@plana.com",
    password: "123456",
    form: {
      mobility1: ("A".."C").to_a.sample,
      mobility2: ("A".."C").to_a.sample,
      food1: ("A".."C").to_a.sample,
      food2: ("A".."C").to_a.sample,
      household1: ("A".."C").to_a.sample,
      household2: ("A".."C").to_a.sample,
      household3: ("A".."C").to_a.sample
    }
  },

  { first_name: "Michele",
    last_name: "Comolli",
    username: "michele",
    city: "Milano",
    email: "michele@plana.com",
    password: "123456",
    form: {
      mobility1: ("A".."C").to_a.sample,
      mobility2: ("A".."C").to_a.sample,
      food1: ("A".."C").to_a.sample,
      food2: ("A".."C").to_a.sample,
      household1: ("A".."C").to_a.sample,
      household2: ("A".."C").to_a.sample,
      household3: ("A".."C").to_a.sample
    }
  },

  { first_name: "Giacomo",
    last_name: "Bonomelli",
    username: "giacomo",
    city: "Milano",
    email: "giacomo@plana.com",
    password: "123456",
    form: {
      mobility1: ("A".."C").to_a.sample,
      mobility2: ("A".."C").to_a.sample,
      food1: ("A".."C").to_a.sample,
      food2: ("A".."C").to_a.sample,
      household1: ("A".."C").to_a.sample,
      household2: ("A".."C").to_a.sample,
      household3: ("A".."C").to_a.sample
    }
  },

  { first_name: "Michael",
    last_name: "Tung",
    username: "michael",
    city: "Milano",
    email: "michael@plana.com",
    password: "123456",
    form: {
      mobility1: ("A".."C").to_a.sample,
      mobility2: ("A".."C").to_a.sample,
      food1: ("A".."C").to_a.sample,
      food2: ("A".."C").to_a.sample,
      household1: ("A".."C").to_a.sample,
      household2: ("A".."C").to_a.sample,
      household3: ("A".."C").to_a.sample
    }
  },

  { first_name: "Naelle",
    last_name: "Burger",
    username: "naelle",
    city: "Milano",
    email: "naelle@plana.com",
    password: "123456",
    form: {
      mobility1: ("A".."C").to_a.sample,
      mobility2: ("A".."C").to_a.sample,
      food1: ("A".."C").to_a.sample,
      food2: ("A".."C").to_a.sample,
      household1: ("A".."C").to_a.sample,
      household2: ("A".."C").to_a.sample,
      household3: ("A".."C").to_a.sample
    }
  },

  { first_name: "Soraya",
    last_name: "De Lisa",
    username: "soraya",
    city: "Milano",
    email: "soraya@plana.com",
    password: "123456",
    form: {
      mobility1: ("A".."C").to_a.sample,
      mobility2: ("A".."C").to_a.sample,
      food1: ("A".."C").to_a.sample,
      food2: ("A".."C").to_a.sample,
      household1: ("A".."C").to_a.sample,
      household2: ("A".."C").to_a.sample,
      household3: ("A".."C").to_a.sample
    }
  },

  { first_name: "Yassine",
    last_name: "Chaqroun",
    username: "yassine",
    city: "Milano",
    email: "yassine@plana.com",
    password: "123456",
    form: {
      mobility1: ("A".."C").to_a.sample,
      mobility2: ("A".."C").to_a.sample,
      food1: ("A".."C").to_a.sample,
      food2: ("A".."C").to_a.sample,
      household1: ("A".."C").to_a.sample,
      household2: ("A".."C").to_a.sample,
      household3: ("A".."C").to_a.sample
    }
  }
]

user_attributes.each do |attributes|
  User.create(attributes)
end

puts "Finished!"


puts "Creating footprints..."
values = {
  mobility1: {
    A: 0.80,
    B: 1.40,
    C: 2.60
  },
  mobility2: {
    A: 0.00,
    B: 1.60,
    C: 4.70
  },
  food1: {
    A: 0.85,
    B: 1.25,
    C: 2.05
  },
  food2: {
    A: 0.85,
    B: 1.05,
    C: 1.25
  },
  household1: {
    A: 0.27,
    B: 0.87,
    C: 1.30
  },
  household2: {
    A: 0.25,
    B: 0.73,
    C: 1.13
  },
  household3: {
    A: 0.29,
    B: 0.83,
    C: 1.30
  }
}
User.all.each do |user|
  form = user.form
  footprint = Footprint.new(
  { mobility: values[:mobility1]["#{form["mobility1"]}".to_sym] + values[:mobility2]["#{form["mobility2"]}".to_sym] ,
    food: values[:food1]["#{form["food1"]}".to_sym] + values[:food2]["#{form["food2"]}".to_sym],
    household: values[:household1]["#{form["household1"]}".to_sym] + values[:household2]["#{form["household2"]}".to_sym] + values[:household3]["#{form["household3"]}".to_sym]
  })
  footprint.user = user
  footprint.save
  total = footprint.mobility + footprint.food + footprint.household
  if total >= 0 && total <= 3.5
      user.score = 100
  elsif total > 3.5 && total <= 7.5
    user.score = 50
  else
    user.score = 0
  end
  user.save
end

puts "Finished!"



puts "Creating 2 challenges..."

challenge_attributes = [
  { category: "plastic-free",
    description: "avoid all forms of packaging that involve plastic",
    information: "Plastic never bio-degrades and disrupts our endocrine system, and is suspected to cause cancer, infertility, and many other diseases. Managing your waste has a direct positive impact on the healthcare of our ecosystems, especially the ocean. The Plastic Free Challenge is designed to raise awareness and promote solutions.",
    duration: 28,
    impact: 0.50.to_f },

  { category: "plant-based",
    description: "no meat / fish / dairy / eggs -- fully plant-based",
    information: "At Plana, we believe that eating mostly plant-based whole foods for three weeks (or longer) is the perfect way to make a positive impact on our environment by saving CO2. On average diet accounts for 40\% of our carbon footprint.",
    duration: 28,
    impact: 1.01.to_f}
]

if Challenge.all.empty?
  challenge_attributes.each do |attributes|
    Challenge.create(attributes)
  end
end

puts "Finished!"


puts "Creating commitments..."

User.all.each do |user|
  commitment = Commitment.new( {
    start_date: Date.new(2020,10,10),
    end_date: Date.new(2020,10,10) + 28,
  })
  commitment.challenge = Challenge.all.sample
  commitment.user = user
  commitment.save
end

puts "Finished!"


puts "Creating 6 categories..."

category_attributes = [
  { name: "shop responsibly"},
  { name: "plant-based recipes"},
  { name: "package-free shops"},
  { name: "organic restaurants"},
  { name: "seasonal foods"},
  { name: "farmers markets"}
]

if Category.all.empty?
  category_attributes.each do |attributes|
    Category.create(attributes)
  end
end

puts "Finished!"




