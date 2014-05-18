# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input?
#The input is a 
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# # 2. Initial Solution
# class Array
#   def pad(n, v = nil)
#    	  if n > self.length 
#         padded_array = self.dup
#         while n > self.length
#             padded_array.push(v)
#             n -= 1
#         end
#         padded_array
#       end
#   end
  
#   def pad!(n, v = nil)
#       if n > self.length
#           array_length = self.length
#           while n > array_length
#             self.push(v)
#             x -= 1
#           end
#           self

#       end 
#   end
# end




# 3. Refactored Solution
class Array
  def pad(n, value = nil)
      if n > self.length 
        padded_array = self.dup
        while  n > self.length
            padded_array.push(value)
            n -= 1
        end
        padded_array
      end
  end
  
  def pad!(n, value = nil)
      if n > self.length
          array_length = self.length
          while n > array_length
            self.push(value)
            x -= 1
          end
          self

      end 
  end
end

# 4. Reflection 
# This was surprisingly very difficult. It took me forever to understand that to put make
# one's own function that can be put after a variable you have to put in the class of that
# kind of variable. I still don't really understand what I did I just googled and fiddled 
# until it started working. 