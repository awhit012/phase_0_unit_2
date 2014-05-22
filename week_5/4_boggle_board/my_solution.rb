# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge by myself.

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode

# Initial Solution
def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end

  


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  #=> returns "code"  
puts create_word(boggle_board, [0,1], [0,2], [1,2])  #=> creates what california slang word?

# Reflection 

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
#Input: a nested array, a row #
#outpud: the row 
#

# Initial Solution
def get_row(board, row)
	board[row]
end

# Refactored Solution
#doesn't get much better than the above :)


# DRIVER TESTS GO BELOW THIS LINE
puts get_row(boggle_board, 0) == ["b", "r", "a", "e"]

# Reflection 
#Easy! Fun way to learn about nested arrays. what about a column? OOh! Thants next!


#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
#Input: nested array, collumn #
#Returns: column

# Initial Solution
def get_col(board, column)
	board.map {|col| col[column]}
end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
puts get_column(boggle_board, 1) === ["r", "o", "c", "a"] 


# Reflection
#I needed a new array that didn't exist from other arrays, so I thought .map
#would be the way to go. A quick google search and some play in the irb 
#confirmed this as a good solution.  