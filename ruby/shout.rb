# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   #define a "yelling happly" method
#   def self.yelling_happily(words)
#     words + "!!!" + "HORAAY!!!"
#   end

# end

# #driver code
# puts Shout.yell_angrily("GET OFF MY LAWN")
# puts Shout.yelling_happily("AH, FINALLY, THEY GOT OFF MY LAWN")



##### ### #  RELEASE 3  # ### #####

# Create 'Shout' module
module Shout
  def shout
    puts "Heeeyyy aaa a e aayy.. You know you make me wanna SHOUT!"
  end
end

# Define two classes and incorporate the Shout module
class Isley_Brother1
  include Shout
end

class Isley_Brother2
  include Shout
end

# Declare instances for each class
rudolph = Isley_Brother1.new
ronald = Isley_Brother2.new


# Driver code
rudolph.shout
ronald.shout