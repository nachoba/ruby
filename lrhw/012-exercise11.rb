#   LEARN RUBY THE HARD WAY - 3 EDITION
#   ----------------------------------------------------------------------------
#   Exercise 11 : Asking Questions
#   ------------------------------
#   Now it's time to pick up the pace. You're doing a lot of printing to get you
#   familiar with typing simple things, but those  simple things are  fairly bo-
#   ring. What we want to do now is get data into your programs.  This is a lit-
#   tle tricky  because you  have to learn  to do two  things that may  not make
#   sense right away, but trust me and do it anyway. It will make sense in a few
#   exercises.
#
#   Most of what software does is the following:
#   [1] Take some kind of input from a person.
#   [2] Change it.
#   [3] Print out something to show how it changed.
#
#   So far you have been printing strings, but you have not been able to get any
#   input from a person. You may not even know what "input" means, but type this
#   code in anyway and make it exactly the same. In the next exercise we will do
#   more to explain input.

print "How old are you? "
age = gets.chomp

print "How tall are you? "
height = gets.chomp

print "How much do you weigh? "
weight = gets.chomp

puts "So, you're #{age} old, #{height} tall and #{weight} heavy."


#   I use "print" instead of "puts" to print the string without a "\n" (newline)
#   printed and the prompt stops right where the user should enter the answer.
#
#   Study Drills
#   ------------
#   [1] Go online and find out what Ruby's "gets.chomp" does.
#   [2] Can you find other ways to use it? Try some of the samples you find.
#   [3] Write another "form" like this to ask some other question.
#
#   [1] The gets method gets input from the user with a "\n" escape  sequence at
#       the end. If we add gets.chomp, the "\n" is discarded.
#
#   How do I get a number from someone so I can do math?
#   ----------------------------------------------------
#   That's a little advanced, but try "gets.chomp.to_i" which says: get a string
#   from the user, chomp off the \n, and convert it to an integer.
#   
