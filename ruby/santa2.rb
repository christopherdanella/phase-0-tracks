class Santa

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer",
                        "Vixen", "Comet", "Cupid", "Donner", "Blitzen" ]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaaaappy holidays!"
  end

  def milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

end

# santa = Santa.new
# santa.speak
# santa.milk_and_cookies("oreo")

santas = []
possible_genders = ["male", "female", "transgender", "he-she-it"]
possible_ethnicities = ["black", "brown", "orange", "Asian"]

possible_genders.length.times do |i|
  santas << Santa.new(possible_genders.sample, possible_ethnicities.sample)
end
p santas