#   LEARN RUBY THE HARD WAY - 3 EDITION
#   ----------------------------------------------------------------------------
#   Exercise 4 : Variables and Names
#   --------------------------------
#   Now you can print things with puts and you can do math.  The next step is to
#   learn about variables. In programming,a variable is nothing more than a name
#   for something, similar how my name "Zed" is a name for, "The human who wrote
#   this book".  Programmers use  these variable  names to make their  code read
#   more like English and  because they have lousy memories. If they did not use
#   good names for things in  their software, they'd get lost when they tried to
#   read their code again. 
#
#   If you get stuck with this exercise, remember the tricks  you have been tau-
#   ght so far of finding differences and focusing on details:
#
#   [1] Write a comment abouve each line explaning to yourself  what it does in
#       English.
#   [2] Read your .rb file backward.
#   [3] Read your .rb file out loud, saying even the characters.


cars = 100
space_in_a_car = 4.0
drivers = 30
passengers = 90
cars_not_driven = cars - drivers
cars_driven = drivers
carpool_capacity = cars_driven * space_in_a_car
average_passengers_per_car = passengers / cars_driven


puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."


#   The Output of The Program Is:
#   ----------------------------
#
#   There are 100 cars available.
#   There are only 30 drivers available.
#   There will be 70 empty cars today.
#   We can transport 120.0 people today.
#   We have 90 to carpool today.
#   We need to put about 3 in each car.
#
#
#
#   The "_" in "space_in_a_car" is called an underscore character.  Find out how
#   to type it if you do not already know. We use this character a lot to put an
#   imaginary space between words in variable names.
#
#
#
#   Study Drills
#   ------------
#   [1] I used 4.0 for "space_in_a_car", but is that necessary?  What happens if
#       it's just 4?
#   [2] Remember that 4.0 is a "floating point" number. It is just a number with
#       a decimal point,  and you need 4.0 instead of just 4 so that it is floa-
#       ting point.
#   [3] Write comments above each of the variable assignments.
#   [4] Make sure you know what "=" is called (equals)  and that its  purpose is
#       to give data (numbers, strings, etc.) names (cars_driven, passengers).
#   [5] Remember that "_" is an underscore character.
#   [6] Try running "ruby" from the terminal as a calculator like you did before
#       and use variable names to  do your calculations.  Popular variable names
#       are also "i", "x", and "j".


#   [1] No, it's not necessary as the result is still an integer.
