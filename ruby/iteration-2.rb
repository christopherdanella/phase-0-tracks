# RELEASE 0

def dog_bark
  puts "What does a dog say?"
  yield("Lily", "Wonton", "Boomer")
end

dog_bark { |dog1, dog2, dog3| puts "#{dog1}, #{dog2}, and #{dog3} say woof woof woof!" }


# RELEASE 1

dog_breeds = ["Rottweiler", "Pitbull", "Golden Retriever", "Labrador"]
puts "Before .each call:"
p dog_breeds  

puts "After .each call:"
dog_breeds.each do |breed|
  p breed
end

puts "After .map! call:"
dog_breeds.map! do |breed|
  p breed.upcase.reverse
end

weather_patterns = {"April" => "Rainy", "July" => "Hot", "January" => "Snow"}
new_weather = {}

puts "Before .each call:"
p weather_patterns


puts "After .each call:"
weather_patterns.each do |month, type|
  p month, type
end


puts "Modified new hash after .each call:"
weather_patterns.each do |month, type|
  new_weather[month] = type.downcase
end
p new_weather


