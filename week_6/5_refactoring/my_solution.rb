# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself, with: ].


# Original Solution

# U2.W6: Refactoring for Code Readability

#Input: a credit card number
# Output:true or false validation
# Steps:implement the algorithm 

# VALID = FALSE
# [1, 2, 3, 4, 5, 6, 7, 16]
# set NUMBER equal to NUMBER split into array of each digit 
# Create two ARRAYS one with the ODD_DIGITS one for EVEN_DIGITS
# FOR ELEMENT in ODD_DIGITS
#   ELEMENT = ELEMENT * 2
# ODD_DIGITS gets SPLIT into new array ODDS_SPLIT of each digit
# ODDS_SPLIT sum
# EVEN_DIGITS sum 
# IF SUM of BOTH above arrays % 10 == 0 
# VALID = TRUE
# I worked on this challenge by myself.


# # Original Solution

# class CreditCard

# 	def initialize(number)
# 		@number = number #initialize 
# 		raise ArgumentError.new("Credit card digit length is invalid.") unless number.to_s.length == 16
# 	end

# 	def check_card
# 		#valid = false #defaults to invalid 

# 		number = @number.to_s.chars.map(&:to_i) #changes num to array of digits
# 		odd_digits = number.values_at(* number.each_index.select {|i| i.odd?}) #separates odds and evens
# 		even_digits = number.values_at(* number.each_index.select {|i| i.even?})

# 		odd_digits = odd_digits.collect { |n| n * 2 } #multiply odd digits by 2

# 		odd_digits = odd_digits.to_s.chars.map(&:to_i) #splits double digits

# 		sum = odd_digits + even_digits

# 		sum.reduce(:+) % 10 == 0
# 	end

# end





# 1. DRIVER TESTS GO BELOW THIS LINE
# visa = CreditCard.new(4563960122001999)
# p visa.check_card # => true
# mastercard = CreditCard.new(4563960122001990)
# p mastercard.check_card # => false
# fake = CreditCard.new(001) # => Argument Error





# Refactored Solution
class CreditCard

	def initialize(number)
		@number = number #initialize 
		raise ArgumentError.new("Credit card digit length is invalid.") unless number.to_s.length == 16
	end
	
	def check_card
    	cc = @number.to_s.scan(/./).map(&:to_i) 
    
    	doubled_nums = cc.each_index { |i| cc[i] *= 2 if i.even? }.join.scan(/./).map(&:to_i) 

    	doubled_nums.inject(:+) % 10 == 0 ? true : false 
  	end

end



# DRIVER TESTS GO BELOW THIS LINE
visa = CreditCard.new(4563960122001999)
p visa.check_card # => true
mastercard = CreditCard.new(4563960122001990)
p mastercard.check_card # => false

	


# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE






# Reflection 