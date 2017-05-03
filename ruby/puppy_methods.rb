class Puppy

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




