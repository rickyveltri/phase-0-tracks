module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  #define a "yelling happly" method
  def self.yelling_happily(words)
    words + "!!!" + "HORAAY!!!"
  end

end

#driver code
puts Shout.yell_angrily("GET OFF MY LAWN")
puts Shout.yelling_happily("AH, FINALLY, THEY GOT OFF MY LAWN")