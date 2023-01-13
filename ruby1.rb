class Car                                                                     # A class named car which consists of relatable methods and data.

    N0_OF_WHEELS = 4  
    
    fuel_prices_h = Hash[:petrol => 105.4, :diesel => 96.72, :cng => 79.56 ]  # created a hash.

    @@fuel_prices_e = fuel_prices_h.to_enum                                   # converted the created hash to an enum.

     def gst_calculator(price)                                                # A method that takes in a parameter and caluculates the final price by imposing gst.
        gst = (18.to_f/100)*price
        tot_price = (price + gst).to_i 
        return tot_price
    end

    def scope_tester(color_of_obj = "red")                                    # A method which creates 2 type of variables and checks their scope and prints the same.
        color = color_of_obj
        @color = color_of_obj
        p "scope of color : #{defined?(color)}"
        p "scope of @color : #{defined?(@color)}"
    end

    def how_many_wheels                                                       # This method uses the CONSTANT variable.
        p "this vehicle is a #{N0_OF_WHEELS} wheeler."
    end

    def info_color(color="white")                                                     # Takes in a parameter and prints it.
        p "the color of the car is #{color}"
    end

    def info_fuel_prices                                                      # This method uses the enum
        @@fuel_prices_e.with_index{ |fuel_price| p fuel_price }
    end



end

=begin  --tests--
car = Car.new
var = car.gst_calculator(90)
p var
car.scope_tester
car.how_many_wheels
car.info_color("red")
car.info_fuel_prices
=end
