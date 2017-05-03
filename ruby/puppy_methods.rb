#####  Release 0 + 1 #####


class Puppy

  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  #define speak method, printing "woof" as many times as the argument indicates
  def speak(integer)
    integer.times do
    puts "Woof!"
  end
  end

  #create roll over method
  def roll_over
    puts "*roll over*"
  end

  #create dog years method, which takes human years (1) and turns it into dog years (7)
  def dog_years(integer)
    dog_years = integer*7
    puts "#{integer} human years is equal to #{dog_years} dog years."
  end

  #have the dog play dead.
  def play_dead
    puts "Lay down, roll over, stay still"
  end

end

rosco = Puppy.new


#DRIVER CODE
rosco.fetch("ball")
rosco.speak(4)
rosco.roll_over
rosco.dog_years(10)
rosco.play_dead



#####  Release 2  #####

#create new class
class Gymnast

  def initialize
    puts "Initializing gymnast..."
  end

  def flip(integer)
    puts "Run across the board at full speed, flipping #{integer} times."
  end

  def jump
    puts "Bend knees, push off the ground and jump!"
  end

end

# create two instances of Gymnast
kala = Gymnast.new
ricky = Gymnast.new



# #create gymnast array, numbered 1-50
# gymnasts = [*1..50]

# #iterate through array, assigning each to the Gymnast class
# gymnasts.map! do |x|
#   i = x.to_s

#   # assign gymnast to class
#   x = Gymnast.new

#   #rename gymnast
#   x = "Gymnast" + i

# end




# create array for gymnasts
gymnasts_instances_array = []

#create 50 instances of Gymnast
50.times do
  x = Gymnast.new
  gymnasts_instances_array << x
end

# Iterate over data structure, performing the class methods on each
gymnasts_instances_array.each do |x|
  x.flip(3)
  x.jump
end

