# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?

# input is an array of grades out of 100
# # What is the output? (i.e. What should the code return?)
# output is a letter grade
# # What are the steps needed to solve the problem?
# get the mean of the array
# return appropriate letter grade 

# input an array
# 	get mean of the array
# 	if the mean is 90% or above, return 'A'
# 	etc.



# 2. Initial Solution
# def get_grade(array)
# 	sum  = array.inject{|sum,x| sum + x } 
# 	mean = sum / array.length
# 	if mean >= 90
# 		'A'
# 	elsif mean >=80
# 		'B'
# 	elsif mean >= 70
# 		'C'
# 	elsif mean >= 60
# 		'D'
# 	elsif mean < 60
# 		'F'
# 	end
# end




# 3. Refactored Solution
def get_grade(array)
	mean = array.inject{|sum,x| sum + x }  / array.length
	if mean >= 90
		'A'
	elsif mean >=80
		'B'
	elsif mean >= 70
		'C'
	elsif mean >= 60
		'D'
	elsif mean < 60
		'F'
	end
end


# 4. Reflection 
After running the tests I considered what the tests required to pass. I wrote out what the input and output
of the funciton would be and how to get there. Then I wrote Pseudocode of how to get from 
input to output. THen I was ready to code. I refactored and combined to lines of code into 
just one mean, because this is a strait forward enough operation to be readable on one line. 