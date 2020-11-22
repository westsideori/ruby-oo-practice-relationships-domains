class Ingredient
    attr_accessor :name, :calorie_count

    @@all = []

    def initialize(name, calorie_count)
        @name = name
        @calorie_count = calorie_count
        @@all << self
    end

    def dessert
        Recipe.all.map {|recipe| recipe.dessert if recipe.ingredients.include?(self)}.compact
    end

    def bakery
        Recipe.all.map {|recipe| recipe.dessert.bakery if recipe.ingredients.include?(self)}.uniq.compact
    end

    def self.all
        @@all
    end

    def self.find_all_by_name(ingredient_name)
        @@all.select {|ingredient| ingredient.name.include?(ingredient_name)}
    end

end
