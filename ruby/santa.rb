class Santa

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

end

santa_claus = Santa.new("agender", "aethnic")
santa_claus.speak
santa_claus.eat_milk_and_cookies('oatmeal')

santas = []

santas.push(Santa.new("female", "asian"))
santas.push(Santa.new("female", "latino"))
santas.push(Santa.new("female", "black"))
santas.push(Santa.new("female", "white"))
santas.push(Santa.new("female", "indian"))
santas.push(Santa.new("male", "asian"))
santas.push(Santa.new("male", "latino"))
santas.push(Santa.new("male", "black"))
santas.push(Santa.new("male", "white"))
santas.push(Santa.new("male", "indian"))

p santas


