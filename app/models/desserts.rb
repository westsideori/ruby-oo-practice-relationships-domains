class Dessert
    attr_accessor :name, :bakery

    @@all = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        Recipe.all.map {|recipe| recipe.ingredients if recipe.dessert == self}.flatten.compact
    end

    def calories
        total_calories = 0
        ingredients.each {|ingredient| total_calories += ingredient.calorie_count}
        total_calories
    end

end
