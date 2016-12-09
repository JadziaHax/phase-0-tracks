# Virus Predictor

# I worked on this challenge [with: May Jawdat].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
# Includes other files for reference in this file.
#
require_relative 'state_data'

class VirusPredictor

  # Initialize - taking initial parameters and passes to attributes
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Performs both methods that handle calculations and provide output
  def virus_effects
    predicted_deaths
    speed_of_spread
    print "#{@state} will lose #{@number_of_deaths} people in this outbreak and will spread across the state in #{@speed} months.\n\n"
  end

  private
  # not able to call outside of class

  # Performs calculation for number of deaths, rounds, and prints result
    def predicted_deaths
    # predicted deaths is solely based on population density
      if @population_density >= 200
        factor = 0.4
      elsif @population_density >= 150
        factor = 0.3
      elsif @population_density >= 100
        factor = 0.2
      elsif @population_density >= 50
        factor = 0.1
      else
        factor = 0.05
      end

      @number_of_deaths = (@population * factor).floor

    end
  end

  # Calculated speed based on population density, prints result
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    @speed = 0.0

    if @population_density >= 200
      @speed += 0.5
    elsif @population_density >= 150
      @speed += 1
    elsif @population_density >= 100
      @speed += 1.5
    elsif @population_density >= 50
      @speed += 2
    else
      @speed += 2.5
    end

  end



#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


#alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
#alabama.virus_effects
#
#jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects
#
#california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects
#
#alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects

STATE_DATA.each do |state, data|
  VirusPredictor.new(state, data[:population_density], data[:population]).virus_effects

end




#=======================================================================
# Reflection Section
=begin
1. State data is using string keys, each state's respective hash is using symbol keys.
2. Require relative specifies information to be included from other files using a relative path. Files included with require are called with paths relative to current working directory, not Ruby file.
3. Each, each pair, each key
4. They were instance variables and we didn't need to pass anything because the instance were called in the child methods.
5. Instance scope vs. method scope, Don't Repeat Yourself




=end