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