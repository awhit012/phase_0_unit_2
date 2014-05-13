# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input? And integer
# What is the output? (i.e. What should the code return?) a string that is the number with commas
# What are the steps needed to solve the problem?
# separate commas gets and integer
# 	convert integer to string
# 	insert ',' at char
# 	RETURN string
# END


# # 2. Initial Solution
# def separate_comma(num)
# 	number_string = num.to_s
# 	if number_string.length < 4
# 		number_string
# 	elsif number_string.length < 7
# 		number_string.insert -4, ','
# 	else 
# 		number_with_1comma = number_string.insert -4, ','
# 		number_with_1comma.insert -8, ','	
# 	end
# end



# 3. Refactored Solution
def separate_comma(num) #takes an integer and converts it to a string with commas in appropriate places
	number_as_string = num.to_s #converts num to a string
	if number_as_string.length < 4 #checks if number isn't long enough to need a comma
		number_as_string #return the number as a string
	elsif number_as_string.length < 7 #checks if number is bigger than 999, but less than 999,999
		number_as_string.insert -4, ',' #inserts a comma at the 4th from last place in string
	else
		number_with_1comma = number_as_string.insert -4, ',' #inserts a comma at the 4th from last place in string and saves that in a variable
		number_with_1comma.insert -8, ',' #inserts second comma in 8th from last place
	end
end

		



# 4. Reflection 
# This was a fun and challenging problem. My Pseudocode could have been more precise. "insert ',' at char" was not 
# sufficient to code from, so it took me a little while to figure out how to do it. My initial solution 
# 	is logically the same as the Refactored, but I changed number_string to number_as_string
# 	and added comments for readability. 