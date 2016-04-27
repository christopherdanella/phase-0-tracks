# Santa needs attributes:
# gender (passed in on initialization)
# ethnicity (passed in on initialization)
# reindeer_ranking (not on initialization)
# age (not on initialization) defaults to 0


class Santa

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
  end

  def speak
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(snack)
    puts "That was a good #{snack}!"
    snack
  end


end

santa = Santa.new("male", "asian")
santa.speak
santa.eat_milk_and_cookies("snickerdoodle")


# container for santa collection
santas = []

# array of possible genders for santas
genders = ["male", "female", "transgender", "he-she-it", "N/A"]

#array of possible ethnicities for santas
ethnicities = ["black", "white", "aboriginal", "extra-terrestrial"]

puts "Iterating through genders list to add for Santas..."
genders.each do |gender|
  puts "Adding a gender called #{gender}..."
  santas << Santa.new(gender, ethnicities)
  puts "There are now #{santas.length} Santa instances in the array"
end

puts "Testing..."
santas.each do |talk|
  talk.speak
end












