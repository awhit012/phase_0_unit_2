# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# "bettysue" is assigned to VAR name
# check if NAME == "bettysue"
# 	else raise ASSERTION ERROR
# check if NAME == "billybob"
# 	else raise ASSERTION ERROR
# 	end
# end




# 3. Copy your selected challenge here

class CreditCard

	def initialize(number)
		@number = number
		raise ArgumentError.new("Credit card digit length is invalid.") unless number.to_s.length == 16
	end

	def check_card
		valid = false 

		number = @number.to_s.chars.map(&:to_i) #changes num to array of digits
		odd_digits = number.values_at(* number.each_index.select {|i| i.odd?}) #separates odds and evens
		even_digits = number.values_at(* number.each_index.select {|i| i.even?})

		odd_digits = odd_digits.collect { |n| n * 2 } #multiply odd digits by 2

		odd_digits = odd_digits.to_s.chars.map(&:to_i) #splits double digits

		sum = odd_digits + even_digits

		sum.reduce(:+) % 10 == 0
	end

end

card_1 = CreditCard.new(1111111111111111)
card_1.check_card == false
card_2 = CreditCard.new(4408041234567893)
card_2.check_card == true



# 4. Convert your driver test code from that challenge into Assert Statements
def assert
  raise "Assertion failed!" unless yield
end

card_1 = CreditCard.new(1111111111111111)
card_2 = CreditCard.new(4408041234567893)

assert {card_1.check_card == false }
assert {card_2.check_card == true }



# 5. Reflection

#I have been waiting for this! I learned TDD and RSPEC in Rails Tutorial and liked it a lot. The step by step
#keeps things from getting overwhealming. But the tutorial didn't cover how to make our own. I am 
#excited to get more comfortable with this. 


