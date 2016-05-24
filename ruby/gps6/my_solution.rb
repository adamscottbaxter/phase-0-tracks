# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

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


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

STATE_DATA.each do |state, pop_density|
  state = VirusPredictor.new(state, pop_density[:population_density],   pop_density[:population])
  state.virus_effects
end


#=======================================================================
# Reflection Section

What are the differences between the two different hash syntaxes shown in the state_data file?

One hash is created using a 'hash rocket' => whereas the other is made using the symbol shortcut.
In this case the method with the hash rocket allows the key to be a string instead of strictly a symbol.

What does require_relative do? How is it different from require?

  require_relative allows the file to add in content (methods, data) from another file in the directory's file structure.
  this is different from require, which can load methods built into ruby itself, outside of the file structure of the project.
What are some ways to iterate through a hash?

A hash may be iterated using:
.each do |key, value|
.each_pair do |key, value|
.each_key do |key|
.each_value do |value|
.each_with_index do |(key,value),index|
each of these will call a block for each key in the hash but use the specified parameters.

When refactoring virus_effects, what stood out to you about the variables, if anything?

The instance variables are available to all the instance methods. They do not need to be passed in as arguments.
  
What concept did you most solidify in this challenge?

(I am not 100% on this...) It seems to me that a private method is one that is not intended to be run in an instance of a class by itself.
In the example for this exercise speed_of_spread and predicted_deaths both returned half sentences and needed to be run together to make sense.




#population density is number of people per square mile as of 2012
#this data is updated every year with estimates from a 10 year census

