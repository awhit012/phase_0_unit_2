# U2.W4: Homework Cheater!


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: title, topic, thesis_statment, pronoun
# Output: a paragraph tying this together starting with a wikipedia quote
# Steps:
# link to a wikipedia file and take first sentence
# concatonate each element as needed with the appropriate linking words.


# 3. Initial Solution

def cheater(title, topic, thesis_statment, author)
	by_line = ' by ' + author + ' '
	lede = 'The subject of ' + topic +' is an interesting topic that requires a lot of thought and discussion. '
	arguement_1 = 'The first reason for this can be illustrated by the fact that the subject of ' + topic + ' is both dynamic and complex.'
	argument_2 = ' Secondly, before and after, but especially in ' + date+ 'many sources indicate that this is the case.'
	arguement_3 = ' Finally, this essay is arguing for this fact so it is probably true, or why would the author even bother? '
	conclusion = ' In conclusion, ' + thesis_statment + ' Thank you.'

	essay = title + by_line + lede + thesis_statment +  arguement_1 + argument_2 + arguement_3 + conclusion
end




# 4. Refactored Solution

def cheater(title, topic, thesis_statment, author, date)
	by_line = ' by ' + author + ' '
	lede = 'The subject of ' + topic +' is an interesting topic that requires a lot of thought and discussion. '
	arguement_1 = 'The first reason for this can be illustrated by the fact that the subject of ' + topic + ' is both dynamic and complex.'
	argument_2 = ' Secondly, before and after, but especially in ' + date+ ' many sources indicate that this is the case.'
	arguement_3 = ' Finally, this essay is arguing for this fact so it is probably true, or why would the author even bother? '
	conclusion = ' In conclusion, ' + thesis_statment + ' Thank you.'

	essay = title + by_line + lede + thesis_statment +  arguement_1 + argument_2 + arguement_3 + conclusion
end






# 1. DRIVER TESTS GO BELOW THIS LINE

puts cheater('Decentralization: The Biggest Trend in a Century', 'Decentralization', 'By flattening the hierarchies and replacing beurocracies with networks, technology is driving us to a freer and more equal future.', 'Alex White', '2014')

puts cheater('Hotdogs: Good American Eating', 'Hotdogs', 'Hotdogs are a delicious food, and a staple of American cookery. ', 'Alex White', '1960' )

puts cheater('Dogs are cool!', 'Dogs', 'Dogs are not only our best friends, but they also are great just in relation to themselves, independantly of people entirely.', 'Alex White', '1999' )


puts cheater('Chomps Blomps', 'Chomps', 'Chomps are the best because they fill up bellies and everyone loves bellies.', 'Jaela', '2090')


# 5. Reflection 
This was a fun excercise! I need to be more disciplined about my Pseudocode and doing a first code and 
refactoring. I haven't been doing detailed enough Pseudocode which leads me to code it by 
reworking each line until its right. This leaves me with only one actual draft, instead
of an original and a refactored one. I wanted to scrape wikipedia for a summary of whatever
the topic was, and actually have written code like that with the help of a tuturial in the past
but I couldn't figure it out again/ didn't have time. I also could do better to make if then statements
	as far as the male/female/singular/plural grammar, which I avoided by wording things very
	stupidly. :)

