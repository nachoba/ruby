#   LEARN RUBY THE HARD WAY - 3 EDITION
#   ----------------------------------------------------------------------------
#   Exercise 5 : More Variables and Printing
#   ----------------------------------------
#   Now we'll do even more typing of variables and printing them out. Every time
#   you put " (double quotes) around text you've been making a string.  A string
#   is how you make something that your program might give to a human. You print
#   strings,  save strings to files, send strings to web servers, and many other
#   things.
#
#   String are really handy,so in this exercise you'll learn how to make strings
#   that have variables embedded in them. You embed variables inside a string by
#   using a special "#{}" sequence and then put the variable you want inside the
#   "{}" characters.  This tells Ruby,  "Hey, this string needs to be formatted.
#   Put these variables in here."
#
#   As usual, just type this in even if you don't understand it, and make it ex-
#   actly the same.

my_name = "Ignacio Sniechowski"
my_age = 45
my_height = 180
my_weight = 84
my_eyes = 'green'
my_teeth = 'white'
my_hair = 'light brown'

puts "Let's talk about #{my_name}."
puts "He's #{my_height} centimeters tall."
puts "He's #{my_weight} kilograms heavy."
puts "Actually that's not too heavy."
puts "He's got #{my_eyes} eyes and #{my_hair} hair."
puts "His teeth are usually #{my_teeth} depending on the coffee."

#  The following line is tricky
puts "If I add #{my_age}, #{my_height}, and #{my_weight} I get #{my_age +
		my_height + my_weight}."


#  The Output of The Program Is:
#
#  Let's talk about Ignacio Sniechowski.
#  He's 180 centimeters tall.
#  He's 84 kilograms heavy.
#  Actually that's not too heavy.
#  He's got green eyes and light brown hair.
#  His teeth are usually white depending on the coffee.
#  If I add 45, 180, and 84 I get 309.
#
#
#  Study Drills
#  ------------
#  [1] Change all  the variables so there is no "my_" in front of each one. Make
#      sure you change the  name everywhere, not just where  you used "=" to set
#      them.
#  [2] Try to write some variables that convert centimeters to inches and pounds
#      to kilograms. Do not just type in the measurements. Work out the math  in
#      Ruby.


puts "My height in inches is #{my_height / 2.54}."
puts "My weight in pounds is #{my_weight * 2.20}."
