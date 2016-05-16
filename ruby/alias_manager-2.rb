# PSEUDOCODE

# write a method that takes a string as a parameter and creates
# a fake name by swapping the first and last name
# changing all the vowels to the next vowel
# and changes each consonant to the next consonant in the alphabet





# create method called name_generator
# add parameter called (name)
def name_generator(name)
  # use .downcase to make sure all letters are lowercase 
  # reverse the name so last name appears first, join them back
  # together after they've been reversed
  name.downcase.split(' ').reverse.join(' ')
end

# p name_generator("Felicia Torres")

def next_vowel(string)
# create a vowels variable containing letters "aeiou"
  vowels = "aeiou"

# create a hash with vowels and their next counterpart
  conversions = {"a" => "e", "e" => "i", "i" => "o", "o" => "u", "u" => "a"}

# create a letter variable and set to string.SPLIT
  letters = string.split('')

# create a new vowel variable and set it to an empty string
  new_vowel = ""

# loop through the array of letters
  letters.each do |letter|
  # if the letter is a vowel, replace it with the next vowel
  # in the sequence
    if vowels.include?(letter)
      new_vowel += conversions[letter]
    else
  # if it's not a vowel, put it in the letter variable
      new_vowel += letter
    end
    end
  new_vowel
end
# puts next_vowel("abcdefiou")

def next_consonant(string)
  consonants = "bcdfghjklmnpqrstvwxyz"

  consonant_conversions = {
    "b" => "c", "c" => "d", "d" => "f", "f" => "g", 
    "g" => "h", "h" => "j", "j" => "k", "k" => "l",
    "l" => "m", "m" => "n", "n" => "p", "p" => "q",
    "q" => "r", "r" => "s", "s" => "t", "t" => "v",
    "v" => "w", "w" => "x", "x" => "y", "y" => "z",
    "z" => "b" }

  letters_cons = string.split('')

  new_consonant = ""

  letters_cons.each do |convert|
    if consonants.include?(convert)
      new_consonant += consonant_conversions[convert]
    else
      new_consonant += convert
    end
  end
  new_consonant
end

# puts next_consonant("bcdfghijz")

def alias_creator(agent_name)
  # reverse the names so the last name appears first
  reversed_name = name_generator(agent_name)
  # make sure the vowels are concentrated and shifted to the next vowel
  vowel_switcher = next_vowel(reversed_name)
  # same with consonants using method above
  cons_switcher = next_consonant(vowel_switcher)
  # combine everything
  cons_switcher.split(' ').map { |name| name.capitalize }.join(' ')
end
p alias_creator("Felicia Torres")

# USER INTERFACE

fake_names = {}

loop do
puts "Welcome to the alias generator"
puts "Please enter a name, type 'quit' when you are finished."
spy_name = gets.chomp

if spy_name == "quit"
  break
end

puts alias_creator(spy_name)
fake_names[spy_name] = alias_creator(spy_name)
end

puts "Here are all of the spies and their names:"
fake_names.each do |key, value| 
  puts "#{key} => #{value}"
end
