# PSEUDOCODE

# write a method that takes a string as a parameter and creates
# a fake name by swapping the first and last name
# changing all the vowels to the next vowel
# and changes each consonant to the next consonant in the alphabet





# use .SPLIT to turn the name parameter into an array

# IF character is a space, it should be skipped



# create consonant array containing all consonants
consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q",
              "r", "s", "t", "v", "w", "x", "y", "z"]


# create method called name_generator
# add parameter called (name)

# def name_generator(name)
#   # use .downcase to make sure all letters are lowercase 
#   # reverse the name so last name appears first
#   name.downcase.split('').reverse!
# end
# 
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

#loop through the array of letters
letters.each do |letter|
  #if the letter is a vowel, replace it with the next vowel
  #in the sequence
  if vowels.include?(letter)
    new_vowel += conversions[letter]
  else
  # if it's not a vowel, put it in the letter variable
    new_vowel += letter
  end
  end
new_vowel
end
puts next_vowel("abcdefiou")

