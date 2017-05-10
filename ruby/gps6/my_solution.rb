# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative will link files within the same folder
# require is for gems or extra libraries of code; e.g. date/time converter
require_relative 'state_data'

class VirusPredictor

  # defines the attributes which need to be passed in upon initialization
  def initialize(state_of_origin)
    @state = state_of_origin
    @population = STATE_DATA[@state][:population]
    @population_density = STATE_DATA[@state][:population_density]
  end

  # calls the other methods within the class to show the data
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # determines the chance of death using the population data via control flow
  def predicted_deaths
    # predicted deaths is solely based on population density


    if @population_density >= 200
      rate = 0.4
    elsif @population_density >= 150
      rate = 0.3
    elsif @population_density >= 100
      rate = 0.2
    elsif @population_density >= 50
      rate = 0.1
    else
      rate = 0.05
    end
    number_of_deaths = (@population * rate).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end


  # determines how quickly the virus will spread in terms of months
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


STATE_DATA.each_key do |state|
  x = VirusPredictor.new(state)
  x.virus_effects
end



#=======================================================================
# Reflection Section
=begin


Hash:  string vs. symbol
-- String keys create a new instance variable, even if it is the exact same.  In the case of the state name, using strings seems to be ideal; some names contain spaces, as well as for aesthetic purposes (upcasing proper names).  A new object is created for each one.
-- For the keys within the hash (i.e. population_density + population), the symbol format was used.  This format is ideal, as the ruby language recognizes that they represent the same data, relate to the same object, and in turn, do not use unneccessary memory creating superfluous objects.

require_relative vs require
-- 'require_relative' creates links between files of the same folder.  We used 'require_relative' above to link the state_data.rb file and information to our code in my_solution.rb.
-- 'require' gives the ability to create links to gems and extra libraries of code not readily available by Ruby's default configuration.

Hash iteration
-- the built-in method of '.each' is a great way to iterate through a hash
-- we used the .each method above to create the class instances (states) and run the virus_effects method for each.

virus_effects - what stood out
-- The variables were unneccessary arguments in both the virus_effects method and sub-methods

Most solidified concept:
-- Refactoring
-- In particular, there was a great difference in the readability of the 'predicted_deaths' method before and after refactoring


=end
