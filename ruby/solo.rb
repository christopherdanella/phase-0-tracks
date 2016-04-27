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

class Car
  attr_reader :year_made
  attr_accessor :color, :type, :year_made

  def initialize(type, color, year_made)
    @color = color
    @type = ["Sedan", "SUV", "Convertible", "Truck"]
    @year_made = year_made
  end

  def rev_engine
    puts "Your #{@type[2]}'s engine is revving! *VROOOOOOM VROOOOOOM*"
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
cars = []

# Allow user to create as many instances of the Car class as they want.
  # PUTS "how many cars would you like to make?"
  # answer = Car.new gets.chomp_to.i
until num_cars == 0
puts "Hello, there. How many cars would you like to make? Type '0' when finished."
num_cars = gets.chomp
num_cars.to_i


# Ask user for each attribute
  # PUTS "What type of car would you like? Choose between Sedan, SUV, Convertible, Truck and what color is it?"
puts "What type of car would you like to make? Choose between Sedan, SUV, Convertible, and Truck."
type = gets.chomp
puts "What color would you like your car to be?"
color = gets.chomp
puts "What year was your car made?"
year_made = gets.chomp
year_made.to_i

end

  # convert answer into appropriate data types @type and @color
  # store this info in an array
  # PUTS "In which year was your car made?"
  # @year_made, add answer to array.

num_cars.to_i.times do 
  car = Car.new(type, color, year_made)
  cars << car
  puts "Here are your results: " 
  puts "Your car is a #{color} #{type}, made in #{year_made}."
end

# When user says they're done creating instances, loop through array
# print out the attributes to confirm it was created
# use a TIMES loop based on the first integer answer provided by the user
  # puts cars []




