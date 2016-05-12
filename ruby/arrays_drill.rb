def build_array(par1, par2, par3)
arr = [par1, par2, par3]
arr
end

p build_array("Dog", "Cat", true)


def item_adder(arr, item)
  arr = arr << item
  arr
end

p item_adder([], "a")
p item_adder(["Bushwick", 1988, "DBC"], 3)
p item_adder(["NYC", false, 2016, "PA"], "USA")



new_array = []
p new_array

new_array << "item 1"
new_array << "item 2"
new_array << 3
new_array << "item 4"
new_array << true
p new_array


new_array.delete_at(2)
p new_array

new_array.insert(2, "Lily")
p new_array

new_array.delete("item 1")
p new_array

puts "The array includes item 2 = #{new_array.include?("item 2")}"

second_array = ["Chris", "Adam", false, "Brooklyn"]

combined_arrays = new_array + second_array
p combined_arrays
