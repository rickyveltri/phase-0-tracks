class Santa

# Define initialize method
  def initialize
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

santa_claus = Santa.new
santa_claus.speak
santa_claus.eat_milk_and_cookies('oatmeal')