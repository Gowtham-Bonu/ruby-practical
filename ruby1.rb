class Car                                                                     # A class named car which consists of relatable methods and data.

    N0_OF_WHEELS = 4  

    fuel_prices_h = Hash[:petrol => 105.4, :diesel => 96.72, :cng => 79.56 ]                                  # created a hash.

    @@fuel_prices_e = fuel_prices_h.to_enum                                                                   # converted the created hash to an enum.

    def gst_calculator                                                                                       # A method that takes in a parameter and caluculates the final price by imposing gst.
        
        begin
            p "Enter a number that's greater than 0"
            @price = gets.chomp.to_i
        end  until @price.is_a? Integer and @price>0
        
        gst = (18.to_f/100)*@price
        tot_price = (@price + gst).to_i 
        p "the final price is #{tot_price}"
    end

    def scope_tester                                                                                          # A method which creates 2 type of variables and checks their scope and prints the same.
        color = "red"
        @color = "blue"

        scope_tester_imp
    end

    def scope_tester_imp
        if @color
            p "'@color' is available in the scope of method 'scope_tester_imp'"
        else
            p "'@color' is'nt available in the scope of method 'scope_tester_imp'"
        end

        if color                                                                                             # calling a local variable form another method returns an error.
            p "'color' is available in the scope of method 'scope_tester_imp'"
        else
            p "'color' is'nt available in the scope of method 'scope_tester_imp'"
        end
    end



    def how_many_wheels                                                       # This method uses the CONSTANT variable.
        p "this vehicle is a #{N0_OF_WHEELS} wheeler."
    end

    def info_color                                                            # Takes in a parameter and prints it.
        begin
            p "Give me a color"
            color = gets.chomp
        end  until color.is_a? String

        p "The color of the car is : #{color}"
        
    end

    def info_fuel_prices                                                      # This method uses the enum
        @@fuel_prices_e.with_index{ |fuel_price| p fuel_price }
    end
end




car = Car.new
car.scope_tester


=begin  --tests--
car = Car.new
var = car.gst_calculator(90)
p var
car.scope_tester
car.how_many_wheels
car.info_color("red")
car.info_fuel_prices
=end
