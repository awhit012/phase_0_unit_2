# U2.W6: Create a BoggleBoard Class


# I worked on this challenge by myself.


# 2. Pseudocode





# 3. Initial Solution
# class BoggleBoard

# 	def grid
# 		@grid
# 	end

# 	def initialize(grid)
# 		@grid = grid 
# 	end
 
#   	def create_word(*coordinates)
#     	words = []
#     	coordinates.each do |coordinate| 
#     		y = coordinate[0]
# 		  	x = coordinate[1]
# 		  	words << @grid[y][x]
# 		end
# 		words.join("")
#   	end

#   	def get_col(col)
#   		@grid.collect { |row| row[col]}
#   	end

#   	def get_row(row)
#   		@grid[row]
#   	end

#  end

 
 
# dice_grid = [["b", "r", "a", "e"],
#              ["i", "o", "d", "t"],
#              ["e", "c", "l", "r"],
#              ["t", "a", "k", "e"]]
 
# boggle_board = BoggleBoard.new(dice_grid)
 


# 4. Refactored Solution
class BoggleBoard

	def grid
		@grid
	end

	def initialize(grid)
		@grid = grid 
	end
 
  	def create_word(*coordinates)
    	words = []
    	coordinates.each do |coordinate| 
    		y = coordinate[0]
		  	x = coordinate[1]
		  	words << @grid[y][x]
		end
		words.join("")
  	end

  	def get_col(col)
  		@grid.collect { |row| row[col]}
  	end

  	def get_row(row)
  		@grid[row]
  	end

 end

 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
 






# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:
puts "\nAssert Statements:"
	def assert
		if yield
			puts "pass"
		else
			puts "fail"
		end
	end

	# create driver test code to retrieve a value at a coordinate here:

	assert { boggle_board.grid[3][2] == "k" }

	# implement tests for each of the methods here:

	assert { boggle_board.create_word([1,2],[1,1],[2,1],[3,2]) == "dock" }
	assert { boggle_board.get_row(3) == ["t", "a", "k", "e"] }
	assert { boggle_board.get_col(2) == ["a", "d", "l", "k"] }


# 5. Reflection 

#OK, so I'm feeling very lost right now. There is something I just haven't gotten. Unfortunately this week is 
#crazy and I have very little time. I will figure this out and not get frustrated! Yes! 
#I understand classes and inheritance, I understand instances and instance methods, class methods, there 
#is just something about putting it all together that is escaping me. 