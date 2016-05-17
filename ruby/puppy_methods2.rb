class Puppy

  def initialize
    puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
    puts "Woof " * integer
    integer
  end

  def roll_over
    "*rolls over*"
  end

  def dog_years(age)
    dog_years = age * 7
  end


  def play_dead
    "*plays dead*"
  end

end

puppy = Puppy.new
p puppy.fetch("ball")
p puppy.speak(3)
p puppy.roll_over
p puppy.dog_years(4)
p puppy.play_dead


class Bike

  def initialize
    puts "Initializing new bike instance..."
  end


  def pedal(speed)
    puts "You are riding #{speed} miles per hour!"
  end

  def turn(direction)
    puts "You are turning to the #{direction}."
  end

  def worth(year)
    case year
    when year = 1979..1989
    puts  "Your bike is worth $200"
    when year = 1990..1999
    puts  "Your bike is worth $250"
    when year = 2000..2016
    puts  "Your bike is worth $300"
    end
  end

end


panasonic = Bike.new
panasonic.pedal(25)
panasonic.turn("left")
panasonic.worth(1986)

array_of_bikes = []

50.times do bike = Bike.new
  array_of_bikes << bike
end

array_of_bikes.each do |bicycles|
  bicycles.pedal(rand(22))
  bicycles.turn("right")
  bicycles.worth(2003)
end



