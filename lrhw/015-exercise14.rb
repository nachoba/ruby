#   LEARN RUBY THE HARD WAY - 3 EDITION
#   ----------------------------------------------------------------------------
#   Exercise 14 - Prompting and Passing
#   -----------------------------------
#   Let's do one exercise that uses ARGV and gets.chomp together to ask the user
#   something specific. You will need this for the next exercise where you learn
#   to read and write files. In this exercise we'll use gets.chomp slightly dif-
#   ferently by having it print a simple > prompt.

user_name = ARGV.first      # gets the first argument
prompt = '> '

puts "Hi #{user_name}."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user_name}? "
print prompt                # prints puts the prompt without a newline.
likes = $stdin.gets.chomp

puts "Where do you live #{user_name}? "
puts prompt
lives = $stdin.gets.chomp

#   Using a comma in "puts"  is like using it twice, or sending another argument
#   to the same receiver.
puts "What kind of computer do you have?", prompt
computer = $stdin.gets.chomp

puts """
Alright, so you said #{likes} about liking me.
You live in #{lives}. Not sure where that is.
And you have a #{computer} computer. Nice.
"""
#   We make a variable "prompt" that is set  to the prompt  we want, and we give
#   that to "gets.chomp"  instead of typing  it over and over. Now if we want to
#   make the prompt something else, we just change it in this one spot and rerun
#   the script. Very handy.
#   You will also  notice that we  used "ARGV.first" in  this script to  get the
#   first command line argument. In the previous script I used:
#                                                    
#                                                    first, second, third = ARGV
#
#   to get three arguments, but that won't work for just  one argument.  The ex-
#   planation as to why is complex at this  point in your  learning, so just re-
#   member that you use "ARGV.first" to get only one argument, and use the other
#   form when you want more than one command line argument . Later you'll under-
#   stand why when you learn about arrays.
#
#   Study Drills
#   ------------
#   [1] Find out what the  games Zork and Adventure were. Try to find a copy and
#       play it.
#   [2] Change the prompt variable to something else entirely.
#   [3] Add another argument and use it in your script, the  same way you did in 
#       the previous exercise with:      first, second = ARGV
#   [4] Make  sure you  understand how I combined a """ style  multi-line string
#       with the #{} format activator as the last print.
#
#
#   Output of The Program
#   ---------------------
#   $ ruby 015-exercise14.rb Nacho
#
#   Hi, Nacho.
#   I'd like to ask you a few questions.
#   Do you lime me Nacho?
#   >
#   No
#   Where do you live Nacho?
#   >
#   Buenos Aires
#   What kind of computer do you have?
#   >
#   Mac
#
#   Alright, so you said No about liking me.
#   You live in Buenos Aires. Not sure where that is.
#   And you have a Mac computer. Nice.


