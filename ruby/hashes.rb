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

puts user_input


# Give the user opportunity to update a key, no need to loop.
# If user says "none" then skip it.
puts "Would you like to update any of the above information? (yes/none)"
answer = gets.chomp
if answer == "yes"
  puts "Enter what you'd like to change (e.g. Name, Age, Number of Children, Decor Theme, Art):"
  new_info = gets.chomp
elsif answer == "none"
end
if new_info == "Name" || new_info == "Age" || new_info == "Number of Children" || new_info == "Decor Theme" || new_info == "Art"
  puts "Enter #{new_info}:"
  change = gets.chomp
  change.to_sym
  new_user_input = {
    :change => change
  }
  user_input.update(new_user_input)
end
puts user_input
# Print latest version of the hash and exit the program.