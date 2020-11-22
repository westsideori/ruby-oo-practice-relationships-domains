class Bakery
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        desserts.map {|dessert| dessert.ingredients if dessert.bakery == self}.flatten.uniq
    end

    def desserts
        Dessert.all.select {|dessert| dessert.bakery == self}
    end

    def average_calories
        total_calories = 0
        desserts.each {|dessert| total_calories += dessert.calories}
        avg_calories = total_calories / desserts.length
        avg_calories
    end

    def shopping_list
        ingredients.map {|ingredient| ingredient.name}.join(', ')
    end


end

