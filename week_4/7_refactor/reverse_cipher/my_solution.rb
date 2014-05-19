# U2.W4: Refactor Cipher Solution


# I worked on this challenge by myself.


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)
    alphabet = ('a'..'z').to_a #creates array with the alphabet in it
    cipher = Hash[alphabet.zip(alphabet.rotate(4))] #.rotate(4) moves over four letters in the alphabet. 
    #zip creates an array of arrays each containing one element of alphabet
    #together they make an array of arrays, each containing a letter in the alphabet starting with a, and the letter 4 letters over
    #Hash makes that into a hash of key value pairs.
    spaces = ["@", "#", "$", "%", "^", "&", "*"]
    original_sentence = sentence.downcase 
    encoded_sentence = []
    original_sentence.each_char do |element| #iterate through each char of the sentence
      if cipher.include?(element) #if the char is a letter
        encoded_sentence << cipher[element] #put the value (4th letter over) in the encoded senctence
      elsif element == ' ' #if there is a space
        encoded_sentence << spaces.sample #put random symbol
      else 
        encoded_sentence << element #else just put whatever wacky element it is in the encoded sentence. 
      end
     end
    
    return encoded_sentence.join #join all of the elements together in a string. 
end 


# Questions:
# 1. What is the .to_a method doing?
#.to_a turns an element into an array
# 2. How does the rotate method work? What does it work on?
#rotate works on an array. It moves right x spaces, and allows a wrap around so from Z you go back to A etc. 
# 3. What is `each_char` doing?
#each_char iterates through chars of strings without having to split them up first! 
# 4. What does `sample` do?
#sample picks a random element from an array! 
# 5. Are there any other methods you want to understand better?
#YES! 
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
# Its mostly better. Mine is pretty close! I am excited about how close mine is. 
# 7. Is this good code? What makes it good? What makes it bad?
# The cipher part on line 15 is doing a whole lot and is not very readable, but other than that I would say its good code. 
#It is efficient. 


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
#Nope! Because of .sample duh. 
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 
# This was fun too and very validating because my last refactored code had some parts in it that were in this one too!
# I really don't have much else to say about this and want to go to bed and it is now 12:07 so I'm out! 

