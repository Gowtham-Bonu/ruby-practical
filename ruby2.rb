number_array = [1,2,3,4,5,6,7,8,9,10]
p number_array.length
p number_array.first
p number_array.last
p number_array.take(5)
p number_array.drop(4)

number_array_clone = number_array.clone
p number_array_clone
p number_array_clone.pop
p number_array_clone.shift
p number_array_clone.push(11)
p number_array_clone.unshift(0)


#-------------------------------------------------------------------------------------------->

color_array = ["violet", "indigo", "blue", "green", "yellow", "orange", "red"]
p color_array.length                                                        #---common methods begin..
p color_array.first
p color_array.last

color_array_clone = color_array.clone
p color_array_clone
p color_array_clone.shift                                                   #---common methods end..

p color_array.reverse
color_array.select{|color| p color if color.length===3}
p color_array.include?("blue")
p color_array.join(",")
color_array.each{|color| p color}

#----------------------------------------------------------------------------------------------->

cur_date_time = Time.now
p "the current date time is : #{cur_date_time.strftime("%d-%m-%Y %H-%M-%S")}."

f_d_t = cur_date_time + (30*86400)
p "date time after 30 days from now is : #{f_d_t.strftime("%d-%m-%Y %H-%M-%S")}."


#------------------------------------------------------------------------------------------------>



#.each
number_array.each{
    |i| p i if i%2===0
}

#each_with_index
number_array.each_with_index{
    |i , j| p "The number #{i} is at the index #{j}"
}

#map
color_array.map{
    | i | p i.upcase
}

#each..do
number_array.each do|i|
    if i % 2 !=0
        p i
    end
end


#collect

p color_array.collect

#---------------------------------------------------------------------------------------------------->

dictionary = { 
    :one => 'uno',
    :two => 'dos',
    :three => 'tres' 
}

p dictionary[:one]

#---------------------------------------------------------------------------------------------------->

def call_proc_lambda
    pro = Proc.new{| y |
    p "pro has been called and i don`t care for parameter count"
    }

    lambo = ->{
        p "lamda has been called, calling pro"
        pro.call
    }

    lambo.call

end

call_proc_lambda

