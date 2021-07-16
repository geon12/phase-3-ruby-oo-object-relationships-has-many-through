class Meal
    attr_accessor :waiter , :customer, :total, :tip
    @@all = []

    def initialize(waiter,customer,total,tip)
        @waiter = waiter
        @customer = customer
        @total = total
        @tip = tip
        self.save
    end

    def save
        @@all << self
        self
    end

    def self.all
        @@all
    end
end