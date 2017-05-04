##### ### #  RELEASE 0  # ### #####

class Santa

  # refactor with attr_reader/accessor 'syntactic sugar'
  attr_reader :age, :ethnicity
  attr_accessor :gender



  # Define initialize method
  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    puts "Initializing Santa instance..."
  end

# Define speak method
  def speak
    puts "Ho, ho, ho!  Haaaappy holidays!"
  end

# Define eat_milk_and_cookies method
  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end


# Add three attribute-changing methods to the Santa class:

  # age santa by one year
  def celebrate_birthday
    @age += 1
  end

  # take reindeer name argument; move to the back
  def get_mad_at(reindeer_name)
    @reindeer_ranking.push(@reindeer_ranking.delete(reindeer_name))
  end

  # # reassign gender from outside of the class (setter method)
  # def gender=(new_gender)
  #   @gender = new_gender
  # end

  # # get age (getter method)
  # def age
  #   @age
  # end

  # # get ethnicity (getter method)
  # def ethnicity
  #   @ethnicity
  # end

end


##### ### #  DRIVER CODE  # ### #####

santa_claus = Santa.new("agender", "aethnic")
# santa_claus.speak
# santa_claus.eat_milk_and_cookies('oatmeal')


# santas = []

# santas.push(Santa.new("female", "asian"))
# santas.push(Santa.new("female", "latino"))
# santas.push(Santa.new("female", "black"))
# santas.push(Santa.new("female", "white"))
# santas.push(Santa.new("female", "indian"))
# santas.push(Santa.new("male", "asian"))
# santas.push(Santa.new("male", "latino"))
# santas.push(Santa.new("male", "black"))
# santas.push(Santa.new("male", "white"))
# santas.push(Santa.new("male", "indian"))

# p santas

p santa_claus.celebrate_birthday
p santa_claus.get_mad_at('Vixen')
p santa_claus.gender = 'male'

p santa_claus.age
p santa_claus.ethnicity
