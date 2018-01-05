# COUNTING SHEEPS
# ------------------------------------------------------------------------------
# https://www.codewars.com/kata/54edbc7200b811e956000556/train/ruby
#
# Consider an array of sheep where some sheep may be missing from their place.We
# need  a function  that counts the number of sheep present  in the  array (true 
# means present).
#
# For example,
#
# [true,  true,  true,  false,
#  true,  true,  true,  true ,
#  true,  false, true,  false,
#  true,  false, false, true ,
#  true,  true,  true,  true ,
#  false, false, true,  true]
#
# The correct answer would be 17.
# 
# Hint: Don't forget to check for bad values like null/undefined

def countSheeps array
	counter = 0
    array.each do | aBool |
    	if aBool == true
    		counter = counter + 1
    	end
    end
    return counter
end

# The best solution in codewars is

def countSheeps2 array
    array.count(true)
end


# Testing Code

sample = [true,  true,  true,  false,
    	  true,  true,  true,  true ,
    	  true,  false, true,  false,
    	  true,  false, false, true ,
    	  true,  true,  true,  true ,
    	  false, false, true,  true]


size = countSheeps sample
puts size

size2 = countSheeps2 sample
puts size2

# 04jan17is
