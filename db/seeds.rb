require 'json'
require 'open-uri'

puts 'Creating ingredients...'
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredient_serialized = open(url).read
ingredients = JSON.parse(ingredient_serialized)['drinks']

ingredients.each do |ingredient|
Ingredient.create(name: ingredient["strIngredient1"])
end
puts 'Finished!'
