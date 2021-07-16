class Customer
    attr_accessor :name, :age
    @@all = []

    def initialize(name,age)
        @name = name
        @age = age
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
        Meal.new(waiter,self,total,tip)
    end

    def meals
        Meal.all.filter {|meal| meal.customer == self}
    end

    def waiters
        self.meals.map {|meal| meal.waiter}
    end
end