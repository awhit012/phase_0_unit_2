# Input: array, letter
# Output: words in the array with the letter in Input
# my array finding method takes an array and a letter
# # 	FOR each word in the array we check if it includes the letter
# 		IF it does we push that word to a new array
# 			return the new array. 
# 		END IF 
			
# 	END FOR

#INITIAL SOLUTION: 

# def my_array_finding_method (array, letter)
# 	words_with_letter = []
# 	for each_word in array 
# 		if each_word.include?(letter)
# 			words_with_letter.push(each_word)
# 		end
# 	end
# 	words_with_letter
# end


# puts my_array_finding_method(['hop', 'pop', 'stop', 'pim'], 'o')


#REFACTORED SOLUTION

def my_array_finding_method (words, letter) #finds all words in an array containing a specific letter
	words_with_letter = [] #creates empty array to put words with the letter as we iterate through
	for each_word in words #iterate through words
		if each_word.include?(letter) #check if each word contains the letter
			words_with_letter.push(each_word) #if it does, push it the new array
		end
	end
	words_with_letter
end

# INPUT: hash, number
# OUTPUT: list of pets of age = number
# my_hash_finding_method takes a hash and a number
# 	FOR each item in the hash 
# 		IF the item's value is equal to the number
# 			put that item's key in an array
# 		END IF
# 	END FOR
# 	RETURN NAMES
# END FUNCTION

#INITIAL SOLUTION

# def my_hash_finding_method(hash, number)
# 	names = []
# 	hash.each do |name,age| 
# 		if age == number 
# 			names.push(name)
# 		end
# 	end
# 	names
# end


#REFACTORED 

def my_hash_finding_method(names_and_ages, this_age) #given a hash of pet names and ages and an age return pet names of that age
	pets_with_age = [] #create empty array to put pets with this_age in
	names_and_ages.each do |name, age| #for each name/age pair 
		if age == this_age #if the age is equal to this_age
			pets_with_age.push(name) #put the name of that pet in the array
		end
	end
	pets_with_age #and return that array
end

#




