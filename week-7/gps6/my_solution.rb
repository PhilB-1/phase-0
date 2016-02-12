# Virus Predictor

# I worked on this challenge [with: Alyssa Ransbury ].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative

# require_relative 'state_data'
# require_relative points to another file that is required to run portions or all of your code. The other file can be used to store a datebase or is used to join rspec files with the code it is checking. Require relative points to a file in the same directory or a relative path. Require directs to the load path and allows you to load gems to allow your code to access the methods stored within the gem.

require_relative 'state_data'

class VirusPredictor
#Takes in three arguments and turns them into instance variables. It allows you to create a new object when called.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#It calls two methods predicted_deaths and speed_of_spread with instance variables.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
#These are private methods. predicted_death takes three arguements and has an if statement that outputs the number of deaths based on population and density. The higher the density the more deaths will occur. It will print out the results.
  def predicted_deaths

    case @population_density
      when 0...50
        number_of_deaths = (@population * 0.05).floor
      when 50...100
        number_of_deaths = (@population * 0.1).floor
      when 100...150
        number_of_deaths = (@population * 0.2).floor
      when 150...200
        number_of_deaths = (@population * 0.3).floor
      else
        number_of_deaths = (@population * 0.4).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
#It will take two arguments and splits it into groups based on population density with the speed changing based on population density. The speed or number of months is larger with a smaller population density.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      num_months = 0.5
    elsif @population_density >= 150
      num_months = 1
    elsif @population_density >= 100
      num_months = 1.5
    elsif @population_density >= 50
      num_months = 2
    else
      num_months = 2.5
    end

    puts " and will spread across the state in #{num_months} months.\n\n"

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


#Iterate through the state data hash using each possibly and create a new instance of VirusPredictor class.

STATE_DATA.each do |state, hash|
  output = VirusPredictor.new(state, hash[:population_density], hash[:population])
  output.virus_effects
end

#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
One is using symbol notation to denote the key in the hash, while the other leaves the key as a string and uses the rocket symbol to point to the value.

What does require_relative do? How is it different from require?
require_relative points to another file that is required to run portions or all of your code. The other file can be used to store a datebase or is used to join rspec files with the code it is checking. Require relative points to a file in the same directory or a relative path. Require directs to the load path and allows you to load gems to allow your code to access the methods stored within the gem.

What are some ways to iterate through a hash?
You can use a loop to iterate throgh the hash or you can use methods like each to iterate over a hash.

When refactoring virus_effects, what stood out to you about the variables, if anything?
The biggest thing I noticed about the variables were that many were being accepted as arguments, but were unneeded because of the use of instacne variables.

What concept did you most solidify in this challenge?
I think I most solidified iterating over a nested hash.

=end