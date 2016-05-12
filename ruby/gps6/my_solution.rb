# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative takes the data from another file and imports it
# into the current file where it's been declared.

# require_relative searches within the same directory to link the file to
# the current file the programmer is working on.

# require searches throughout the entire library to find the file to link.

require_relative 'state_data'

class VirusPredictor

# Takes 3 parameters and assigns them to instance variables. Sets the state for an instance of a Class. 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# Does not take any parameters. Returns two private methods with instance variables as parameters.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

# A Private method that takes population_density, population, and state as parameters. Uses control flow to determine the number of deaths based on the population density. Returns a string with the number of deaths depending on the state. 
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

# A private method that takes population_density and state as parameters. Uses control flow to determine the speed of the virus spread based on population density. Returns a string that specifies the speed of the virus spread depending on the state population data. 
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

STATE_DATA.each do |state, state_data|
  state = VirusPredictor.new(state, state_data[:population_density], state_data[:population])
  state.virus_effects
end


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
  # The outer hash (STATE_DATA) consists of a string of each state name and a hash rocket pointing to the inner
  # hash which contains the values of population and population_density as symbols, both as integers.

# What does require_relative do? How is it different from require?
  # require_relative takes the data from another file and imports it
  # into the current file where it's been declared.
  # require_relative searches within the same directory to link the file to
  # the current file the programmer is working on.

  # it's different from require because it's looking in the same directory as the file 
  # where it's being declared. require searches the entire library, rather than a specific directory.

# What are some ways to iterate through a hash?
  # You can use a .each do loop with a block to iterate through a hash.
  # You can also use .map to iterate through a hash and update the information within that hash.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
  # We didn't need the parameters within the method itself, nor did we need the instance variables
  # in order for the program to work properly.


# What concept did you most solidify in this challenge?
  # I learned what a constant variable is and how it's different from a global variable. 
  # I also learned that you wouldn't want to use a method to update the information within
  # a constant variable and that if you tried that Ruby would warn you of what you're about 
  # to do. Understanding the differences between types of variables, as well as private methods
  # vs. public methods was also helpful for me in this challenge.


