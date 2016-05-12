# class Car

# Attributes
  # color
  # type (e.g. sedan, SUV, convertible)
  # year_made (integer value)

# Methods
  # write a drive method that says how fast the car is driving as an argument.
  # write a rev method that returns the noise made when the engine is revved
  # write a paint method that changes the color of the car. takes color as an argument.

# end

# create car class with attr_reader and attr_accessor
# include 3 methods that take two different data types (integer, string)
class Car
  attr_reader :year_made
  attr_accessor :color, :type, :year_made

  def initialize(type, color, year_made)
    @color = color
    @type = type
    @year_made = year_made
  end

  def rev_engine
    puts "Your #{@type.sample}'s engine is revving! *VROOOOOOM VROOOOOOM*"
  end

  def drive(max_speed)
    puts "Your car is driving at it's max speed of #{max_speed} MPH!"
  end


  def paint(color)
    @color = color
    puts "You have painted your car #{color}!"
  end

end

# car = Car.new("blue", "convertible")
# puts car.rev_engine
# puts car.drive(120)
# puts car.paint("red")
# car.color = "orange"


# Create program
# array for answers
# cars = []

# Allow user to create as many instances of the Car class as they want.
# loop through while user wants to add cars
adding = true

cars = []
while adding == true
  puts "Welcome. Would you like to add a car? If not, say 'no'."
  answer = gets.chomp.downcase
  if answer != "no"
    puts "Ok. What kind of car?"
    type = gets.chomp
    puts "What color would you like your car to be?"
    color = gets.chomp.downcase
    puts "What year was your car made?"
    year_made = gets.chomp
    year_made.to_i

    car = Car.new(type, color, year_made)
    cars.push(car)
  else 
    # make sure that we have some cars at all
    if cars.length > 0
    # convert answers into right data types
    # print what the user has inputted
      puts "Ok then, here are your cars:"
      cars.each do |car|
        puts "The color is #{car.color} and the car is a #{car.type} made in #{car.year_made}."
      end
    else
      puts "You have no cars!"
    end
  
    adding = false
  end
end






