require "./lib/passenger"

class Vehicle
    attr_reader :year,
                :make,
                :model,
                :is_speeding,
                :passengers

    def initialize(year, make, model)
        @year = year
        @make = make
        @model = model
        @is_speeding = false
        @passengers = []
    end

    def speeding?
        @is_speeding
    end

    def speed
        @is_speeding = true
    end

    def add_passenger(passenger)
        @passengers << passenger
    end

    def num_adults
        num = 0
        @passengers.each do |passenger|
            if passenger.adult?
                num += 1
            end
        end
        return num
    end
end