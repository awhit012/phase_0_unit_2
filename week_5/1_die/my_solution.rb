# U2.W5: Die Class 1: Numeric


# I worked on this challenge myself

# 2. Pseudocode.
#Input: putting in a number of sides
# Output: Getting a random number 
# Steps: create a die class, initialize sides, raise argument error,
# get sides, and then generate random number after setting delimiters.




#3. Initial Solution

# class Die

#   def initialize(sides)
#   	if sides < 2
#       raise ArgumentError, "Sides cannot be less than 2" 
#     end
#     @sides = sides
#   end
  
#   def sides
#     return @sides
#   end
  
#   def roll
#     return (1..sides).to_a.sample
#   end
# end

#4. Refactored Solution

class Die

  def initialize(sides)
  	if sides < 2
      raise ArgumentError, "Sides cannot be less than 3" 
    end
    @sides = sides
  end
  
  def sides
    return @sides
  end
  
  def roll
    return (1..sides).to_a.sample
  end
end
die = Die.new(100)
puts die.sides 
puts die.roll

#Reflection
#Once I get used to classes and variables in classes this will be a snap! Initial
#the mean time it is a challenge. Looking forward to more practice. 