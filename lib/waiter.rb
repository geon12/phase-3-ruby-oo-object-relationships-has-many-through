class Waiter
    attr_accessor :name, :yrs_experience
    @@all = []

    def initialize(name,yrs_experience)
        @name = name
        @yrs_experience = yrs_experience
        self.save
    end

    def save
        @@all << self
        self
    end

    def self.all
        @@all
    end

    def new_meal(waiter,total,tip)
        Meal.new(self,waiter,total,tip)
    end

    def meals
        Meal.all.filter {|meal| meal.waiter == self}
    end

    def best_tipper
        best_tipped_meal = self.meals.max_by {|meal| meal.tip}
        best_tipped_meal.customer
    end
end