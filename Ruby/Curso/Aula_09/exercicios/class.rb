class Car
    def get_km
        find_km
    end
    
private
    
    def find_km
        puts "Um fusca de cor amarela viaja a 80 km/h"
    end
end
    
car = Car.new
car.get_km