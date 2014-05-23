# U2.W5: Virus Predictor

# I worked on this challenge [by myself, with: ].

# EXPLANATION OF require_relative
#
#
require_relative 'state_data' #gets state_date.rb 

class VirusPredictor
  #setting class variables
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  #defining input of predicted deaths and speed of spread
  def virus_effects  #HINT: What is the SCOPE of instance variables?
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private  #this is not visible outside of the function

  #checks pop density, multiplies pop by constant dependant on density, rounds down.
  def predicted_deaths(population_density, population, state)
    
    if @population_density >= 200
      number_of_deaths = (@population * 0.4)
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3)
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2)
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1)
    else 
      number_of_deaths = (@population * 0.05)
    end

    print "#{@state} will lose #{number_of_deaths.floor} people in this outbreak"

  end

  #checks density, adds time it takes to spread based on density
  def speed_of_spread(population_density, state) #in months

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


STATE_DATA.each do |state, data|
    state = VirusPredictor.new(state, data[:population_density], data[:population], data[:region], data[:regional_spread])

 state.virus_effects

end