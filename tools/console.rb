require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end




bakeri = Bakery.new("Bakeri")
ovenly = Bakery.new("Ovenly")

cheese_cake = Dessert.new("Cheesecake", bakeri)
chocolate_cake = Dessert.new("Chocolate Cake", ovenly)
carrot_cake = Dessert.new("Carrot cake", bakeri)
apple_cake = Dessert.new("Apple cake", ovenly)

flour = Ingredient.new("Flour", 100)
egg = Ingredient.new("Egg", 150)
cheese = Ingredient.new("Cheese", 200)
chocolate = Ingredient.new("Chocolate", 300)
chocolate_sprinkles = Ingredient.new("Chocolate Sprinkles", 100)
carrot = Ingredient.new("Carrot", 50)
apple = Ingredient.new("Apple", 50)

cheese_cake_ingredients = [flour, egg, cheese]
chocolate_cake_ingredients = [flour, egg, chocolate, chocolate_sprinkles]
carrot_cake_ingredients = [flour, egg, carrot]
apple_cake_ingredients = [flour, egg, apple]

cheese_cake_recipe = Recipe.new(cheese_cake, cheese_cake_ingredients)
chocolate_cake_recipe = Recipe.new(chocolate_cake, chocolate_cake_ingredients)
carrot_cake_recipe = Recipe.new(carrot_cake, carrot_cake_ingredients)
apple_cake_recipe = Recipe.new(apple_cake, apple_cake_ingredients)

p bakeri.shopping_list

Pry.start