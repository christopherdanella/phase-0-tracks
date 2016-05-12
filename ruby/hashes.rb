# PSEUDOCODE
  # Design a program that will allow an interior designer to enter the details
  # of a given client: name, age, no. children, decor theme, etc.
  # data should be a mix of integer, string, and booleans
  # keys should be symbols

  # program should prompt the designer/user for all info
    # declare empty hash called client_info
    # ask user for information 
    # user input = gets.chomp for each piece of information
    # add each piece of information to the empty hash
      # take user input and store as symbol with input being value
    # after all information is inputted use p client_info
    # ask user if they'd like to update a key
    # IF answer == "none", skip and print out hash again.
    # ELSE ask user what key they'd like to update the value for
    # print updated hash

client_info = {}

puts "Please enter your name:"
name = gets.chomp
client_info[:name] = name

puts "Please enter your age:"
age = gets.chomp.to_i
client_info[:age] = age

puts "Please enter how many children you have:"
num_children = gets.chomp.to_i
client_info[:num_children] = num_children

puts "What is your preferred decor theme?"
decor_theme = gets.chomp
client_info[:decor_theme] = decor_theme

puts "Are you currently employed? Type 'y' or 'n':"
employed = gets.chomp
if employed == "y"
  employed = true
else
  employed = false
end
client_info[:employed] = employed
p client_info

puts "Is there any information you'd like to update? Enter 'none' if no changes are necessary."
p client_info.keys
new_key = gets.chomp.to_sym
if new_key == :none
  p client_info
else
  puts "Please enter update:"
  new_value = gets.chomp
  client_info[new_key] = new_value
  p client_info
end



