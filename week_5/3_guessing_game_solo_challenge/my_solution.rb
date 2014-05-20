# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge by myself.

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end
  
  def guess(guess)
  	@guess = guess
  	if @guess == @answer
  		:correct
  	elsif @guess < @answer
  		:low
  	else 
  		:high
  	end
  end

  def solved?
    @guess == @answer
  end 
end




# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
game = GuessingGame.new(10)

p game.solved?   #=> false

p game.guess(5)  # => :low
p game.guess(20) # => :high
p game.solved?   # => false

p game.guess(10) # => :correct
p game.solved?   # => true

# 5. Reflection
#This was good for more practice with classes methods and variables. Still 
#shaky onwriting own tests. Not sure where they go. But I'm getting
#good at writing from tests :)




# 5. Reflection 
