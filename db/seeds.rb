# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Examples:
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Dose.destroy_all
# Ingredient.destroy_all
# Cocktail.destroy_all

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
# Ingredient.create(name: "gin")
# Ingredient.create(name: "vodka")
# Ingredient.create(name: "tequila")
# Ingredient.create(name: "sugar")
# Ingredient.create(name: "kahlua")
# Ingredient.create(name: "sloe gin")
# Ingredient.create(name: "ginger beer")
# Ingredient.create(name: "ginger ale")
# Ingredient.create(name: "coke")
# Ingredient.create(name: "lemonade")
# Ingredient.create(name: "pineapple juice")
# Ingredient.create(name: "lemon juice")
# Ingredient.create(name: "champagne")
# Ingredient.create(name: "cranberry juice")
# Ingredient.create(name: "frangelico")

require 'open-uri'
require 'json'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_serialized = open(url).read
ingredients = JSON.parse(ingredients_serialized)

ingredients['drinks'].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end

puts "Finished"











