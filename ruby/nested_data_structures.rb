# 1.  build nested data structures
# 2.  access deeply nested data

##### ##  CREATE MAIN DATA STRUCTURE  ## #####
Diet = {
  meat:  [],
  seafood:  [],
  produce:  [],
  oil:  [],
  nuts: [],
  supplements: []
}


##### ##  ADD ITEMS  ## #####

# Meat
Diet[:meat].push(
  'poultry',
  'beef',
  'pork',
  'lamb'
  )

# Seafood
Diet[:seafood].push(
  'salmon',
  'tuna',
  'shrimp',
  'oysters'
  )

# Produce: vegetables + fruits
vegetables = [
  'kale',
  'carrots',
  'garlic'
  ],
fruits = [
  'apple',
  'orange',
  'avocado',
  'kiwi'
  ]
Diet[:produce].push(vegetables, fruits)

# Oil
Diet[:oil].push(
  'olive oil',
  'coconut oil'
  )

# Nuts
Diet[:nuts].push(
  'almonds',
  'peanuts'
  )

# Supplements
Diet[:supplements].push(
  'multivitamin',
  'fish oil'
  )


##### ##  ACCESSING DEEPLY NESTED ITEMS  ## #####

# Print full structure
puts 'Full Data Structure:'
puts Diet

# return the shrimp
puts "Access seafood => shrimp:"
p Diet[:seafood][2]

# return the garlic
puts "Access produce => vegetables => garlic:"
p Diet[:produce][0][0][2]