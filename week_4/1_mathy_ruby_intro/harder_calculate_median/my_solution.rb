# U2.W4: SOLO CHALLENGE Calculate the Median!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# # What is the input?
# input is an array
# # What is the output? (i.e. What should the code return?)
# output is item in array that is the middle value
# # What are the steps needed to solve the problem?
# sort the array then take length/2


# 2. Initial Solution
# def median(array)
# 	array.sort! #sort array
# 	if array.length % 2 != 0  #if array is odd
# 		return array[array.length/2] #return middle item of array
# 	else  #if even
# 		return (array[array.length/2] + array[(array.length/2) -1]) /2.0 #average of the two middle items
# 	end
# end



# 3. Refactored Solution
def median(array)
	array.sort! #sort array
	len = array.length
	if len % 2 != 0  #if array is odd
		return array[len/2] #return middle item of array
	else  #if even
		return (array[len/2] + array[(len/2) -1]) /2.0 #average of the two middle items
	end
end


# 4. Reflection 

# Followed the normal workflow. I got confused byy all of the brackets and parens so the refactored one
# adds another variable for clarity. 