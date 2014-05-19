# U2.W4: Cipher Challenge


# I worked on this challenge with: Puru Dahal



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



# def north_korean_cipher(coded_message)
#   input = coded_message.downcase.split("") #takes coded message and turns it into an array of each letter in array, asigns to input
#   decoded_sentence = [] #creates empty array where we will put our decoded sentence
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c", 
#             "h" => "d", 
#             "i" => "e", 
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}
            
#   input.each do |x| # iterate through each element (letter) of input array and do the following with it: 
#     found_match = false  #found_match set to false b/c we have not yet even checked for a mathc. If later it is set to true, it overrides this. 
#     cipher.each_key do |y| # iterates through each key in the cipher hash, does the following with it:
#       if x == y  #matches the letter in the coded message to the key in the cipher hash
#         puts "I am comparing x and y. X is #{x} and Y is #{y}." #tells us for some reason what the code is doing
#         decoded_sentence << cipher[y] #puts the value that corresponds to the key value in the sentence
#         found_match = true #changes found_match to true, because it found a match. 
#         break  # Break here and start again, b/c once you find a match there is no need to keep going to the end of the loop.
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #Checking if the char is any of these symbols
#         decoded_sentence << " " #replace these symbols with a space
#         found_match = true #if it is, you found a match, change found_match to true
#         break #if you found a match, no need to finish the loop, break here. 
#       elsif (0..9).to_a.include?(x) # put numbers in range 0..9 in array, see if that array includes the char ur on aka see if you are dealing with a number
#         decoded_sentence << x #if its a number, just put it as is in the sentence. 
#         found_match = true #if it is, you found a match, change found_match to true
#         break #if you found a match, no need to finish the loop, break here. 
#       end 
#     end
#     if not found_match  # checking if none of the above things are happening aka if you have an empty input or something unexpected
#       decoded_sentence << x #if so, just return it. 
#     end
#   end
#   decoded_sentence = decoded_sentence.join("") #opposite of split, takes array of letters and makes a string
 
#   if decoded_sentence.match(/\d+/) #Checking if decoded sentence contains one or more digit 1-9
#     decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #if it does devide by 100
#   end  
#   return decoded_sentence # returns the decoded sentence!       
# end

# Your Refactored Solution
def north_korean_cipher(coded_message)
  coded_message_letters = coded_message.downcase.split("") #array of letters in coded message
  decoded_sentence = [] 
  alphabet = ('a'..'z').to_a 
  symbols = ["@", "#", "$", "%", "^", "&", "*"]
  
  coded_message_letters.each do |x|
    if alphabet.include?(x) 
      decoded_sentence << alphabet[alphabet.index(x)-4] #shift back four letters in the alphabet
    elsif symbols.include?(x)
        decoded_sentence << " " #replace these symbols with a space 
    else
        decoded_sentence << x 
    end 
  end
  decoded_sentence = decoded_sentence.join("") #opposite of split, takes array of letters and makes a string
 
  if decoded_sentence.match(/\d+/) #Checking if decoded sentence contains one or more digit 1-9
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #if it does devide by 100
  end  
  return decoded_sentence # returns the decoded sentence!       
end



# Driver Code:
north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

# Reflection
#This was fun. Two things I really don't understand. The important one is how the driver code works and why there is a 'p' in
#front of it. The less important one is why DBC chose the NSA for the example. I feel that is a bit "out of thouch wiht the youth"
#but maybe its just me. I hope its not! Moving on. I basically just ignored the driver code part. I get that it is a test
#I'm just confused about how its supposed to be being implemented. I enjoyed refactoring this code a lot. First of all encryption
#is super fun so the example was fun. Also the way it was implemented was almost comically odd and inefficient. I was so stoked when 
#my intuition was right that i should be able to just put "x-4" somewhere to shift the alphabet over. Also .include? was one 
#of the first Ruby methods I learned and was excited when that was a good solution to that crazy convoluted 'if x == y' stuff. 
