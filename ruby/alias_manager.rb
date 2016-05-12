# Write a method that takes a spy's real name (e.g., "Felicia Torres") and creates a fake name
# by doing the following:

# 1. Swapping the first and last name.
# 2. Changing all the vowels (a, e, i, o, or u) to the next vowel
# and all of the consonants to the next consonant in the alphabet.


# I was unable to get much of anything done with this challenge and feel quite 
# overwhelmed and frustrated.
# I'm disappointed in how little I managed to accomplish and would really appreciate some
# further help grasping these concepts.
# 
# vowels = ["a", "e", "i", "o", "u"]
# consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
# 
# name = "Felicia Torres".split('')
# name.map! do |letter|
#   letter.next
# end
# 
# 
# 
# def vowel_next(input)
# vowels = ["a", "e", "i", "o", "u"]
# index = 0
#   while index < input.length
#   letter = input[index]
#   position = vowels.index(letter)
#   input[index] = vowels[position -1]
#   index += 1
#   end
# end
# input
# puts "Result: " + vowel_next("Christopher")
# 
# 
# 
# 
# 
# index = 0
# while index < name.length
# vowels[0]
# vowels[vowels.index("a") +1]
# end
# 
# 
# def spy_name
#   name = "Felicia Torres"
#   name.split(' ')
#   yield (name)
# end
# spy_name {|name| puts "#{name}".reverse.downcase.next}
# 
# 
# 
# 
# 
# 
# 
# 
# def name_alias
#   puts "Please enter a name (enter 'quit' when finished):"
#   name = gets.chomp
#   name.reverse!
#   name.gsub!(/[aeiou]/, 'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a')
#   name.split(//)
#   puts name
# end
# name_alias
# 
# vowels = ["a", "e", "i", "o", "u"]
# index = 0
# vowels.each do |next_vowel|
#   index += 1























