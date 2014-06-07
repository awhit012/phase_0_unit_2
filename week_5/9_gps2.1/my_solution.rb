# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1)Alex White
# 2)Emmanuel Kaunitz

 # This is the file you should end up editing. 
 
# input => number of people to cook for and the favorite food
# output => a string telling us how much of each item to make

 
def bakery_num(num_of_people, fav_food)
  portion_size = {"pie" => 8, "cake" => 6, "cookie" => 1}
  pie_qty = 0
  cake_qty = 0
  cookie_qty = 0
 
  raise ArgumentError.new("You can't make that food") unless portion_size.include?(fav_food)
    
 
  fav_food_qty = portion_size[fav_food]
  # make as much favorite food as we can. 
  # fill in gaps with next highest food if remainder = that portion size
  # return string
  
  remainder = num_of_people % fav_food_qty
  
  make_fav = num_of_people - remainder 
  
  if remainder = 0
      return "You need to make #{num_of_food} #{fav_foods}(s)
  elsif remainder % pie = 0
      return "You need to make #{make_fav} #{fav_foods} and #{remainder/ pie}
      
  
  if num_of_people % fav_food_qty == 0
    num_of_food = num_of_people / fav_food_qty
    return "You need to make #{num_of_food} #{fav_food}(s)."
  else
        
    while num_of_people > 0
      if num_of_people / portion_size["pie"] > 0
        pie_qty = num_of_people / portion_size["pie"]
        num_of_people = num_of_people % portion_size["pie"]
      elsif num_of_people / portion_size["cake"] > 0
        cake_qty = num_of_people / portion_size["cake"]
        num_of_people = num_of_people % portion_size["cake"]
      else
        cookie_qty = num_of_people
        num_of_people = 0
      end
    end
    return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
  end
end
 

#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
p bakery_num(6, "cake") 
p bakery_num(14, "pie")
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!
 
