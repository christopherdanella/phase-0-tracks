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