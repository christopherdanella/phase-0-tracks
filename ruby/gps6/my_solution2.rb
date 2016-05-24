# Virus Predictor

# I worked on this challenge [with: Adam Baxter].
# We spent 1.5 hours on this challenge.

# EXPLANATION OF require_relative
# require_relative is accessing a file within the same working directory for the purposes of using methods or data outside the specific file. 
# require is used to access another ruby library, but not one that is within the working directory.

require_relative 'state_data'

# population density is number of people per square mile as of 2012
# this data is updated every year with estimates from a 10 year census

class VirusPredictor

  # accepting three arguments and assigning instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # a method which does not take an parameters. It is running both     predicted_deaths and speed_of spread methods.
  
  
  def virus_effects
    predicted_deaths 
    speed_of_spread 
  end

  private
  
  # private method that takes 3 parameters as arguments, uses control flow
  # to calculate the percentage of deaths that each state will experience
  # based on population density. prints the result as the return value.
  
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # private method that takes two parameters as arguments, uses control flow
  # to calculate the speed of the virus spread based on population density. the
  # more dense the population is per state, the faster the virus will spread.
  # returns a string that is added on to the return value of the previous        method.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, pop_density|
  state = VirusPredictor.new(state, pop_density[:population_density],   pop_density[:population])
  state.virus_effects
end


#=======================================================================
# Reflection Section






#population density is number of people per square mile as of 2012
#this data is updated every year with estimates from a 10 year census
