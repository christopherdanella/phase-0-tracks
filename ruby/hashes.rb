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



=======
# Program should prompt designer/user for following info:
# name, age, number of children, decor theme, etc.
# data should include mix of string, integer, and boolean data


# Prompt designer for all required info.
# Convert any user input to appropriate data type.
# Print hash back out to the screen when all questions have been answered.
puts "Please enter the following information:"
puts "Name:"
name = gets.chomp
puts "Age:"
age = gets.chomp
age = age.to_s
puts "Number of children:"
children = gets.chomp
children = children.to_s
puts "Preferred Decor Theme:"
decor_theme = gets.chomp
puts "You enjoy fine art (true/false)"
art = gets.chomp

user_input = {
  :name => name,
  :age => age,
  :num_children => children,
  :decor_theme => decor_theme,
  :art => art
}

p user_input


# Give the user opportunity to update a key, no need to loop.
# If user says "none" then skip it.
puts "Would you like to update any of the above information? (yes/none)"
answer = gets.chomp
if answer == "yes"
  puts "Enter what you'd like to change (e.g. Name, Age, Number of Children, Decor Theme, Art):"
  new_info = gets.chomp
elsif answer == "none"
end

if new_info == "Name"
  puts "Please update #{new_info}:"
  change = gets.chomp
  change.to_sym
  user_input = {
    :name => change,
    :age => age,
    :num_children => children,
    :decor_theme => decor_theme,
    :art => art
  }
elsif new_info == "Age"
  puts "Please update #{new_info}:"
  change = gets.chomp
  change.to_sym
  user_input = {
    :name => name,
    :age => change,
    :num_children => children,
    :decor_theme => decor_theme,
    :art => art
  }
elsif new_info == "Number of Children"
    puts "Please update #{new_info}:"
  change = gets.chomp
  change.to_sym
  user_input = {
    :name => name,
    :age => age,
    :num_children => change,
    :decor_theme => decor_theme,
    :art => art
  }
elsif new_info == "Decor Theme"
  puts "Please update #{new_info}:"
  change = gets.chomp
  change.to_sym
  user_input = {
    :name => name,
    :age => age,
    :num_children => children,
    :decor_theme => change,
    :art => art
  }
elsif new_info == "Art"
  puts "Please update #{new_info}:"
  change = gets.chomp
  change.to_sym
  user_input = {
    :name => name,
    :age => age,
    :num_children => children,
    :decor_theme => decor_theme,
    :art => change
  }
  end
# Print latest version of the hash and exit the program.
p user_input
