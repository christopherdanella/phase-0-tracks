while true
puts "How many employees will be processed?"
input = gets.chomp
input = input.to_i

if input == 0
  break
end

puts "What is your name?"
name = gets.chomp

puts "How old are you? What year were you born?"
age = gets.chomp
year = gets.chomp
real_age = age.to_i + year.to_i
puts real_age
current_year = 2016
puts current_year

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic_preference = gets.chomp

puts "Would you like to enroll in the company's health insurance?"
insurance_preference = gets.chomp

allergies = ""
while true
puts "Please list your any allergies that you have (type 'done' when finished)"
allergies = gets.chomp

if 
  allergies == "done"
  break
end

end

if real_age == current_year && garlic_preference == "yes" && insurance_preference == "yes"
  puts "Probably not a vampire."
elsif (real_age != current_year && garlic_preference == "yes" || insurance_preference == "no" || allergies == "sunshine") 
  puts "Probably a vampire."
elsif (real_age != current_year && garlic_preference == "no" || insurance_preference == "yes" || allergies == "sunshine")
  puts "Probably a vampire."
elsif (real_age != current_year && garlic_preference == "no" && insurance_preference == "no")
  puts "Almost certainly a vampire."
else
  puts "Results inconclusive."
end

case name
  when "Drake Cula", "Tu Fang"
    puts "Definitely a vampire."
end

puts "Your name is #{name}, your age is #{age}."
if garlic_preference == "yes"
  puts "Your order of garlic is coming right up."
else
  puts "You declined the garlic offer."
end

if insurance_preference == "yes"
  puts "You are opted into our health insurance."
else
  puts "You have opted out of our insurance."
end

if input == 1
  break
end

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."



