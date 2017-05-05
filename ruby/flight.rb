# Write a flight module
module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude} ..."
  end
end


# Declare classes for Bird and Plane
class Bird
  include Flight
end

class Plane
  include Flight
end


bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)

