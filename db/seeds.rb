
require 'json'
require 'open3'
require 'open-uri'
require 'pry'


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

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

category = Category.where(name: "shop responsibly").first

if Item.where(category: category).empty?

puts "Adding brands to category..."

category = Category.where(name: "shop responsibly").first

  a = "curl 'https://api.goycloud.com/functions/browseCategories-V2' \
  -H 'authority: api.goycloud.com' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36 Edg/83.0.478.54' \
  -H 'content-type: text/plain' \
  -H 'accept: */*' \
  -H 'origin: https://directory.goodonyou.eco' \
  -H 'sec-fetch-site: cross-site' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-dest: empty' \
  -H 'referer: https://directory.goodonyou.eco/categories/tops' \
  -H 'accept-language: it-IT,it;q=0.9,en;q=0.8,en-GB;q=0.7,en-US;q=0.6' \
  --data-binary '{\"category\":\"tops\",\"offset\":10000,\"filters\":{\"gender\":[2],\"sort\":0},\"_ApplicationId\":\"gcrp2V42PHW7S8ElL639\",\"_JavaScriptKey\":\"gVoyh28ouDRUazw9IMrF6nIkxHVtvvALHHJL5BOg\",\"_ClientVersion\":\"js2.1.0\",\"_InstallationId\":\"9bd19dd1-56a5-a314-f28a-ec137c3e5559\"}' \
  --compressed".to_s
# b = Kernel.system(a)
result = nil
Open3.popen3(a) do |stdin, stdout, stderr|
  result = stdout.read
end
brands = JSON.parse(result)
# name
# description
# url
# image url
# "https://directory.goodonyou.eco/brand/#{yummy-maternity}"
# Pry::ColorPrinter.pp(brands)
best = brands["result"]["brands"].select do |brand|
  brand["ethical_rating"] >= 3
end
count = 0
best.first(300).each do |brand|
  item = Item.new(
    name: brand["name"],
    description: brand["price"],
    url: "https://directory.goodonyou.eco/brand/#{brand["id"]}"
    )
  item.category = category
  if brand["image"].present?
    file = URI.open(brand["image"])
    item.photo.attach(io: file, filename: "brand#{count}.png", content_type: 'image/png')
  end
  count += 1
  item.save
#   p brand["name"]
#   p brand["ethical_rating"]
#   p brand["price"]
#   p brand["image"]
#   p "https://directory.goodonyou.eco/brand/#{brand["id"]}"
end
p "Thank God it's finished!"
else
  puts "The brands have already been stored in the database..."
end


# RECIPE SEEDS
plant_category = Category.where(name: 'plant-based recipes').first
if Item.where(category: plant_category).empty?
  p "Creating Recipe seeds"
    #Pry::ColorPrinter.pp(info)
  api_key = "c5a31e7ce3ec40f49ddb05ed72e816f9" #plan103@akxpert.com
  t_count = 0
  url = "https://api.spoonacular.com/recipes/complexSearch?diet=vegan&number=50&offset=0&apiKey=#{api_key}&includeNutrition=true."
  recipes_serialized = open(url).read
  recipes = JSON.parse(recipes_serialized)

  # Pry::ColorPrinter.pp(recipes)
  results = recipes["results"]
  results.each do |recipe|
    api_key = "c5a31e7ce3ec40f49ddb05ed72e816f9"
    url_info ="https://api.spoonacular.com/recipes/#{recipe["id"].to_i}/information?apiKey=#{api_key}&includeNutrition=true"
    info_serialized = open(url_info).read
    info = JSON.parse(info_serialized)
    #Pry::ColorPrinter.pp(info)
    category = Category.where(name: 'plant-based recipes').first
    item = Item.new(
      name: info["title"],
      description: info["readyInMinutes"],
      url: info["sourceUrl"]
      )
    item.category = category
    file = URI.open(info["image"])
    item.photo.attach(io: file, filename: "recipe#{t_count}.png", content_type: 'image/png')
    t_count += 1
    item.save
  end

  p "Created 50 recipe seeds"
  p "Creating the next 50 recipe seeds"
  api_key = "7d2316a3ecb04df2bb6474b291ef160f"
  url = "https://api.spoonacular.com/recipes/complexSearch?diet=vegan&number=50&offset=51&apiKey=#{api_key}&includeNutrition=true."
  recipes_serialized = open(url).read
  recipes = JSON.parse(recipes_serialized)
  results = recipes["results"]
  results.each do |recipe|
    url_info ="https://api.spoonacular.com/recipes/#{recipe["id"].to_i}/information?apiKey=#{api_key}&includeNutrition=true"
    info_serialized = open(url_info).read
    info = JSON.parse(info_serialized)
     Pry::ColorPrinter.pp(info)
    category = Category.where(name: 'plant-based recipes').first
    item = Item.new(
      name: info["title"],
      description: info["readyInMinutes"],
      url: info["sourceUrl"]
      )
    item.category = category
    file = URI.open(info["image"])
    item.photo.attach(io: file, filename: "recipe#{t_count}.png", content_type: 'image/png')
    t_count += 1
    item.save
  end

  p "Created total 101 recipe seeds"
  p "Creating the next 50 recipe seeds"
  api_key = "b10345bf49c7417283d56dcfb9b289d0"
  url = "https://api.spoonacular.com/recipes/complexSearch?diet=vegan&number=50&offset=102&apiKey=#{api_key}&includeNutrition=true."
  recipes_serialized = open(url).read
  recipes = JSON.parse(recipes_serialized)
  results = recipes["results"]
  results.each do |recipe|
    url_info ="https://api.spoonacular.com/recipes/#{recipe["id"].to_i}/information?apiKey=#{api_key}&includeNutrition=true"
    info_serialized = open(url_info).read
    info = JSON.parse(info_serialized)
     Pry::ColorPrinter.pp(info)
    category = Category.where(name: 'plant-based recipes').first
    item = Item.new(
      name: info["title"],
      description: info["readyInMinutes"],
      url: info["sourceUrl"]
      )
    item.category = category
    file = URI.open(info["image"])
    item.photo.attach(io: file, filename: "recipe#{t_count}.png", content_type: 'image/png')
    t_count += 1
    item.save
  end

  p "Created total 153 recipe seeds"
  p "Creating the next 50 recipe seeds"
  api_key = "2955395df676404caf40a018c9f03358"
  url = "https://api.spoonacular.com/recipes/complexSearch?diet=vegan&number=50&offset=154&apiKey=#{api_key}&includeNutrition=true."
  recipes_serialized = open(url).read
  recipes = JSON.parse(recipes_serialized)
  results = recipes["results"]
  results.each do |recipe|
    url_info ="https://api.spoonacular.com/recipes/#{recipe["id"].to_i}/information?apiKey=#{api_key}&includeNutrition=true"
    info_serialized = open(url_info).read
    info = JSON.parse(info_serialized)
     Pry::ColorPrinter.pp(info)
    category = Category.where(name: 'plant-based recipes').first
    item = Item.new(
      name: info["title"],
      description: info["readyInMinutes"],
      url: info["sourceUrl"]
      )
    item.category = category
    file = URI.open(info["image"])
    item.photo.attach(io: file, filename: "recipe#{t_count}.png", content_type: 'image/png')
    t_count += 1
    item.save
  end
  p "Created total 205 recipe seeds"
  p "Creating the next 50 recipe seeds"
  api_key = "2955395df676404caf40a018c9f03358"
  url = "https://api.spoonacular.com/recipes/complexSearch?diet=vegan&number=50&offset=206&apiKey=#{api_key}&includeNutrition=true."
  recipes_serialized = open(url).read
  recipes = JSON.parse(recipes_serialized)
  results = recipes["results"]
  results.each do |recipe|
    url_info ="https://api.spoonacular.com/recipes/#{recipe["id"].to_i}/information?apiKey=#{api_key}&includeNutrition=true"
    info_serialized = open(url_info).read
    info = JSON.parse(info_serialized)
     Pry::ColorPrinter.pp(info)
    category = Category.where(name: 'plant-based recipes').first
    item = Item.new(
      name: info["title"],
      description: info["readyInMinutes"],
      url: info["sourceUrl"]
      )
    item.category = category
    file = URI.open(info["image"])
    item.photo.attach(io: file, filename: "recipe#{t_count}.png", content_type: 'image/png')
    t_count += 1
    item.save
  end

  p "Created total 257 recipe seeds"
  p "Creating the next 50 recipe seeds"
  api_key = "b10345bf49c7417283d56dcfb9b289d0"
  url = "https://api.spoonacular.com/recipes/complexSearch?diet=vegan&number=50&offset=258&apiKey=#{api_key}&includeNutrition=true."
  recipes_serialized = open(url).read
  recipes = JSON.parse(recipes_serialized)
  results = recipes["results"]
  results.each do |recipe|
    url_info ="https://api.spoonacular.com/recipes/#{recipe["id"].to_i}/information?apiKey=#{api_key}&includeNutrition=true"
    info_serialized = open(url_info).read
    info = JSON.parse(info_serialized)
     Pry::ColorPrinter.pp(info)
    category = Category.where(name: 'plant-based recipes').first
    item = Item.new(
      name: info["title"],
      description: info["readyInMinutes"],
      url: info["sourceUrl"]
      )
    item.category = category
    file = URI.open(info["image"])
    item.photo.attach(io: file, filename: "recipe#{t_count}.png", content_type: 'image/png')
    t_count += 1
    item.save
  end

  p "Created total 309 recipe seeds"
  p "Thank God it's finished!"
else
  p "Recipe Seeds are included"
end

