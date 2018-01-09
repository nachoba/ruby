#   LEARN RUBY THE HARD WAY - 3 EDITION
#   ----------------------------------------------------------------------------
#   Exercise 3 : Numbers and Math
#   -----------------------------
#   Every programming language has some kind of way of doing numbers and math.Do
#   not worry: programmers frequently lie about being math geniuses when they're
#   not. If they were math geniuses, they would be doing math, not writing buggy
#   web frameworks so they can drive race cars.
#
#   This exercise has lots of maths symbols.  Let us name them right away so you
#   know what they are called. As you type this one  in, say the name. When say-
#   ing them feels boring you can stop saying them. 
#   Here are the names:
#
#       +       plus                    addition
#       -       minus                   subtraction
#       /       slash                   division
#       *       asterisk                multiplication
#       %       percent                 modulo
#       <       less-than               comparison <
#       >       greater-than            comparison >
#       <=      less-than-equal         comparison <=
#       >=      greater-than-equal      comparison >=
#
#   Notice  how the operations are missing? After you type in  the code for this
#   exercise, go back  and figure out what each of  these does  and complete the
#   table.

puts "I will now count my chickens:"
puts "Hens #{25 + 30 / 6}"                  # prints "Hens 30"
puts "Roosters #{100 - 25 * 3 % 4}"         # prints "Roosters 25"

puts "Now I will count the eggs:"
puts 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6      # prints 7

puts "Is is true that 3 + 2 < 5 - 7?"
puts 3 + 2 < 5 - 7                          # prints false

puts "What is 3 + 2? #{3 + 2}"              # prints "What is 3 + 2? 5"
puts "What is 5 - 7? #{5 - 7}"              # prints "What is 5 - 7? -2"

puts "Oh, that's why it's false."
puts "How about some more."

puts "Is it greater? #{5 > -2}"             # prints "Is it greater? true"
puts "Is it greater or equal? #{5 >= -2}"   # prints "Is it great...? true"
puts "Is it less or equal? #{5 <= -2}"      # prints "Is it less....? false"


#   The use of #{3+2} in the code above is how you insert Ruby computations into
#   text strings. You can put anything that is Ruby code between the "{" and "}"
#   characters  and Ruby will  run it and put  the result there instead of those 
#   characters.  It may not make a lot of sense right now, but you will use this
#   more and more in the book and begin to understand it as you work.
#
#
#   Study Drills
#   ------------
#   [1] Above each  line, use the "#" to write a  comment to yourself explaining
#       what the line does.
#   [2] Remember in Exercise 0 when you  started "irb"?  Start "irb" this way a-
#       gain and, using the math operators, use Ruby as a calculator.
#   [3] Find something you need to  calculate and write a new .rb file that does
#       it.
#   [4] Rewrite this exercise to use  floating point numbers so it is more accu-
#       rate. 20.0 is a floating point.
#
#
#
#   Common Questions
#   ----------------
#
#   [1] How does % work?
#       Another way to say it is, "X divided by Y with J remaining". For example
#       "100 divided by 16 with 4 remaining".  The result of % is the J part, or
#       the remaining part. 

