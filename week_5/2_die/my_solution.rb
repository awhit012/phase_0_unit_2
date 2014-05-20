# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: Die.new and an array of strings
# Output: one random string
# Steps: initialize, def sides, def roll.
#class Die


# 3. Initial Solution

class Die

  def initialize(array)
    raise ArgumentError if array.empty?
    @array = array
  end
  
  def sides
  	return @array.length
  end
  
  def roll
    return @array.sample
  end
end


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new([1,2,3,4,5,6])
p die.sides # 6
p die.roll # [1,2,3,4,5,6][rand(die.sides) + 1] => [1,2,3,4,5,6][rand(6) + 1]




# 5. Reflection 

#Cool beans! Refactoring to take on different inputs is a good wat for me to 
#understand this better. 
