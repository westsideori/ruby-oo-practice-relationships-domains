class Recipe
    attr_accessor :dessert, :ingredients

    @@all = []

    def initialize(dessert, ingredients)
        @dessert = dessert
        @ingredients = ingredients
        @@all << self
    end

    def self.all
        @@all
    end
end
