# Release 1

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # call our method create_list
  # our create_list method will take a string of items 
  # take string of items (our string, example: "carrots apples cereal pizza"))     and split them into an array using whitespace as a delimiter.
  # create an empty hash 
  # iterate over our array and set the default quantity for each item to 1
  # add each item and quantity to our hash
  # print the list to the console, we can call our print list method below
# output: hash with items and quantities


def create_list(items)
  item_list = items.split(' ')
  grocery_list = {} 
  item_list.each do |item|
    grocery_list[item] = 1
  end
  grocery_list  
end

# Method to add an item to a list
# input: the list (hash), item name, and optional quantity
# steps: take new item (string), and add it to hash with a quantity 
# output: updated list with item added

def add_item(grocery_list, item, qty)
  grocery_list[item] = qty  
  grocery_list
end

# Method to remove an item from the list
# input: the list (hash), item to delete
# steps: delete the item from the list by calling the item specifically
# output: updated list with item removed

def remove_item(grocery_list, item)
  grocery_list.delete(item)
  grocery_list  # Now this is the last object evaluated
end

# Method to update the quantity of an item
# input: list, item, quantity
# steps: call the grocery list, choose the item that we want to update the quantity for, and take an integer as the new value for that item
# output: updated list with new quantity of item that has been updated

def update_qty(grocery_list, item, qty)
  grocery_list[item] = qty
  grocery_list
end

# Method to print a list and make it look pretty
# input: list
# steps: loop through each key and item in the list, print each item and it's quantity to the screen for the user to see. Add UI that says "Here is your grocery list: " 
# output: the list which will be hash with items as keys and quantities as values

def print_list(grocery_list)
  puts "Here is your grocery list: "
  grocery_list.each do |item, integer|
    puts "#{item}, #{integer}"
  end
end

# Release 2
# Driver code
#list = create_list("carrots apples cereal pizza")
#add_item(list, "orange", 3) 
#remove_item(list, "carrots")
#update_qty(list, "cereal", 2)
#print_list(list)

# Release 3
list = create_list("apples lettuce juice milk")
add_item(list, "lemonade", 2)
add_item(list, "tomatoes", 3)
add_item(list, "onions", 1)
add_item(list, "ice cream", 4)
remove_item(list, "lemonade")
update_qty(list, "ice cream", 1)
print_list(list)



# REFLECTION

# What did you learn about pseudocode from working on this challenge?
# I learned that pseudocode is an excellent way to provide yourself a roadmap
# when working through a problem. Typing out your process in plain English is very
# helpful to keep you on track and give you pointers while coding.

# What are the tradeoffs of using arrays and hashes for this challenge?
# It's useful to store the initial input into an array since it's a series of strings and 
# and then convert the array to a hash since there are keys and values involved. Ultimately,
# we found the hash to be a bit more useful since there is a key and a value within the 
# grocery list.


# What does a method return?
# A method returns the last value in the statement of the method. 
# I learned a good bit about implicit vs explicit returns in this GPS.
# Using the word RETURN is not necessary if you just make sure that the value
# you want to return is the last statement of the method.

# What kind of things can you pass into methods as arguments?
# Strings, integers, basically anything you like as long as what you are passing into the method equals
# the number of arguments required by the method.

# How can you pass information between methods?
# You can pass information between methods by calling the method with the information you'd like to pass 
# to the new method.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# The importance of pseudocoding was really solidified for me in this challenge. It's something that I plan
# to use as often as possible moving forward. I'd still like more practice with iterating on arrays and hashes
# and manipulating information contained in those data structures. The concepts
# of implict and explicit return were also solidified today. Chris



