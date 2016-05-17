class Santa
  attr_reader :age
  attr_accessor :gender, :ethnicity

  def initialize(gender, ethnicity, age)
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

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking << reindeer_name
  end

end

# santa = Santa.new("male", "red")
# santa.speak
# santa.milk_and_cookies("oreo")
# p santa.celebrate_birthday
# p santa.get_mad_at("Vixen")
# santa.gender = "Extra Terrestrial"
# puts "Santa is now an #{santa.gender}."
# p santa.age
# p santa.ethnicity

santas = []
possible_genders = ["male", "female", "transgender", "he-she-it", "N/A"]
possible_ethnicities = ["black", "brown", "orange", "Asian", "Russian", "Native American"]


100.times do santa = Santa.new(possible_genders.sample, possible_ethnicities.sample, [*1..140].sample)
  puts "Santa Claus's gender is #{possible_genders.sample}, Santa's ethnicity is #{possible_ethnicities.sample}, and Santa's age is #{[*1..140].sample}"
end





