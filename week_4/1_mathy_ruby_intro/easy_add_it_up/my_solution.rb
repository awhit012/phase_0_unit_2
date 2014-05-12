# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?
#
# Add_it_up:

# take array of numbers
# # iterate through the array 
# #   add each number
# # return the sum

# Sentence_maker
# take an array of strings
#   concatonate strings together with spaces 
#   capitalize the first letter of the first string
#   put a period at the end. 

# 2. Initial Solution

# def total(array)
# 	total = 0
# 	for i in array
# 		total += i
# 	end
# 	total
# end

# def sentence_maker(array)
# 	array[0].capitalize!
# 	return array.join(' ') +'.'
	
# end




# 3. Refactored Solution

def total(array)
	array.inject{|sum,x| sum + x }
end

def sentence_maker(array)
	array[0].capitalize!
	return array.join(' ') +'.'
end


# 4. Reflection 

# First I tried the tests and saw what it wanted me to code. I then Pseudocoded the solutions, and then 
# turned that into the first solution. After looking on stackoverflow for a more efficient
# and less wordy solution to the sum function I updated with a Refactored solution. 