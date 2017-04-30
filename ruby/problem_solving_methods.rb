##### ##  RELEASE 0: IMPLEMENT A SIMPLE SEARCH  ## #####

def search_array (array, integer)
  # set counter to 0
  i = 0
  while i < array.length #while the counter remains < number of items within the array, do the following
    if array[i] == integer # evaluate if current position == integer input
      break
    else
      i += 1 # otherwise, add one to the counter
    end
  end
  i
end

#### ##  TEST  ## ####
arr = [42, 89, 23, 1]
p search_array(arr, 23) # => 2





##### ##  RELEASE 1: CALCULATE FIBONACCI NUMBERS  ## #####

def fib(length)
  array = [0, 1]
  i = 1
  # account for edge cases [length <= 2]
  if length == 0
    array = []
  elsif length == 1
    array = [0]
  elsif length == 2
    array
  else
    while i < length - 1
      #take array[i] + array[i-1], then push it to array
      array.push(array[i] + array[i-1])
      i += 1
    end
    array
  end
end

# Test the 100th number
p fib(100)[99] == 218922995834555169026 # the 99th index position should store the 100th number.  Therefore, this returns 'true'







##### ##  RELEASE 2: SORT AN ARRAY  ## #####
# 1. with pseudocode
# 2. without pseudocode

# 1.
def bubble_sort(array) # Define a method with an array parameter

  ### # DEFINE VARIABLES # ###

  i = 0 # Within a loop, this variable allows us to move up from array[0], array[1], and so on. We sort of make a 'stop' at the index,  apply some sort of logic, move on to the next, apply that same logic, etc.

  swapped = false # Think of this variable like a lightswitch: if a 'swap' must be made, the light turns on: swapped = true.


  ### # LOOP & LOGIC # ###

  while i < array.length - 1
  # We set up 'a' and 'b' as temporary variables, which change to new values with each iteration.
    a = array[i]
    b = array[i+1]

    if a <= b # if a is less than or equal to b...
      i += 1 # no problem: let's move on to the next iteration!
    else # less than or equal was false, therefore, we assume it is greater than.  We realize at this point that a swap must be made...
      array[i] = b  # array[i] had pointed to the value of 'a', but now we reassign it to the value of 'b'
      array[i+1] = a #  array[i+1] had pointed to the value of 'b', but now we reassign it to the value of 'a'
      swapped = true # Lights on!
      i += 1 # Move on to the next iteration
    end
    # As indicated by the i+=1, after both the if and else statements, we continue up the chain no matter what: 'b' becomes 'a', and what would have been 'c' becomes 'b'.  We re-evaluate and repeat until the end of the array is reached.
  end
  if swapped # ['== true' is implied by Ruby]  It's at this point that we ask our program if the light was ever turned on inside the while loop.  If so, that means we need to repeat the process from the start...
    bubble_sort(array)
  end # Finally, we made it!  Meaning that the last iteration found a<=b to be true all the through, i.e. no swaps were made, i.e. we're finally in order!  Return the sorted array.
  array
end

  #### ## # TEST # ## ####
arr = [9, 7, 1, 8, 3, 9, 1, -7, 5, 4, -9, 0, 2, 1]
p bubble_sort(arr) #call the method in order to test


#2.
#### ## # THE SAME FUNCTION WITHOUT THE PSEUDOCODE # ## ####
def bubble_sort(array)

  i = 0
  swapped = false

  while i < array.length - 1

    a = array[i]
    b = array[i+1]

    if a <= b
      i += 1
    else
      array[i] = b
      array[i+1] = a
      swapped = true
      i += 1
    end

  end

  if swapped
    bubble_sort(array)
  end

  array
end