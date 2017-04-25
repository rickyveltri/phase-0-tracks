###### RELEASE 1 ######

# Declare an array
pets = ["cat", "dog", "fish"]

# Iterate through the array with .each
p "Iterate through the array with .each:"
pets.each do |pet|
  puts pet
end

# Call on each array item
puts "After .each call:"
p pets

# Declare a hash
pets = {
  cat:  "Annie",
  dog:  "Ruby",
  fish: "Bubbles"
}

# Iterate through hash
pets.each do |pet, name|
  puts "The #{pet}'s name is #{name}."
end

# Create a suitcase array
suitcase = ['sunscreen', 'jeans', 't-shirts']

# Use .map to create a new, UPCASED SUITCASE
SUITCASE = suitcase.map do |item|
  item.upcase
end

# print array to console
p "ORIGINAL ARRAY:"
p suitcase
p ".vs"
p "NEW ARRAY:"
p SUITCASE

# Create a detailed suitcase (hash)
suitcase_detail = {
  sunscreen: "Neutrogena",
  jeans: "Levi",
  t_shirts: "V-neck",
}

# Iterate through a HASH using .map
SUITCASE_DETAIL = suitcase_detail.map do |key, value|
  key.upcase #will not be returned
  value.upcase #value to be returned in the new array
end

# Print hash + array to the console
p "ORIGINAL HASH:"
p suitcase_detail
p ".vs"
p SUITCASE_DETAIL
p "NOTE: '.map' results only as an array, not a hash"



###### RELEASE 2 ######

# 1.  Deletes numbers less than 5
numbers = [1,2,3,4,5,6,7,8,9,10]
numbers.delete_if{|i| i < 5}
p numbers

# 2.  Keep numbers less than 5
numbers = [1,2,3,4,5,6,7,8,9,10]
numbers.keep_if{|i| i < 5}
p numbers

# 3.  Find the index for a word within an array
words = ["backpack", "coding", "pencil"]
p words.index{|i| i == "pencil"}

# 4. Remove values
## condition = (index < 5)
numbers = [1,2,3,4,5,4,3,2,1]
p numbers.drop_while {|i| i < 5}