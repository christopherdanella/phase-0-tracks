def random_method(arr, value)
  new_array = arr << value
end
p random_method(["a", "b"], 4)
p random_method(["Chris", "Hayden", "Dev Bootcamp"], 88)

def method(boolean, string, integer)
  answer = [boolean, string, integer]
  p answer
end
method(true, "Dev Bootcamp", 55)

new_array = []
new_array = ["ruby", 9, true, "DBC", false]
new_array = []
new_array = ["ruby", 9, true, "DBC", false]
new_array.delete_at(2)
new_array.insert(2, "NYC")
new_array.shift
new_array.include?("DBC")
p new_array

second_array = ["Chris", "Hayden", 38]

third_array = new_array + second_array
p third_array