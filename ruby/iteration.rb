# RELEASE 0

def our_method
  puts "So far, so good."
  yield("Chris", "Christel")
  puts "Still, hopefully, good."
endour_method { |parameter1, parameter2| puts "This is parameter1: #{parameter1}. And this is parameter2: #{parameter2}"}


# RELEASE 1 (Try The Thing)

days_of_week = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

puts "Original data:"
p days_of_week

array.each

days_of_week.each do |day|
 puts day
end

array.map!

days_of_week.map! do |day|
  day.swapcase
end

puts "After method call:"
p days_of_week



state_capitals = {"New York" => "Albany", "Pennsylvania" => "Harrisburg", "California" => "Sacramento"}

puts "Original data:"
p state_capitals

hash.each
state_capitals.each do |state, capital|
 puts capital
end

puts "After method call:"
p state_capitals


# RELEASE 2


letters = ["a", "b", "c", "d"]
letters.delete_if {|letter| letter != "d"}
puts letters


letters.keep_if {|letter| letter == "a" || letter == "b"}
puts letters

letters.select! {|letter| letter == "c" || letter == "a"}
puts letters

letters.drop_while {|letter| letter != "c"}
puts letters



new_hash = {
  1 => "one",
  2 => "two",
  3 => "three",
  55 => "fifty-five",
  88 => "eighty-eight"
}

new_hash.delete_if {|integer, string| integer < 50}
puts new_hash

new_hash.keep_if {|integer, string| integer <= 3}
puts new_hash

new_hash.select! {|integer, string| string == "eighty-seven"}
puts new_hash
# using the string "eighty-seven" will return nil. using "eighty-eight" returns the 88 => "eighty-eight" key, value in the hash.




