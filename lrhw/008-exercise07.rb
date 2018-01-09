#  LEARN RUBY THE HARD WAY - 3 EDITION
#  -----------------------------------------------------------------------------
#  Exercise 7 : More Printing
#  --------------------------
#  Now we are going to  do a bunch of  exercises where you just type code in and
#  make it run. I will not be explaining this exercise because it is more of the
#  same. The purpose is to build up your chops. See you in a few exercises,  and
#  do not skip!. Do not paste!

puts "Mary had a little lamb"
puts "Its fleece was white as #{'snow'}."	# 'snow' is a string!!!
puts "And everywhere that Mary went."
puts "." * 10								# "." * 10 => repeats "." ten times

end1  = "C"
end2  = "h"
end3  = "e"
end4  = "e"
end5  = "s"
end6  = "e"
end7  = "B"
end8  = "u"
end9  = "r"
end10 = "g"
end11 = "e"
end12 = "r"

#  Watch the difference between print vs. puts on the next lines.
print end1 + end2 + end3 + end4 + end5 + end6
puts  end7 + end8 + end9 + end10 + end11 + end12


#  The Output of The Program is:
#  -----------------------------
#  Mary had a little lamb
#  Its fleece was white as snow.
#  And everywhere that Mary went.
#  ..........
#  CheeseBurger
#
#
#  Study Drills
#  ------------
#  [1] Go back through and write a comment on what each line does.
#  [2] Read each one backward or out loud to find your errors.
#  [3] From now on,  when you make mistakes, write down on a piece of paper what
#      kind of mistake you made.
#  [4] When you go to the next exercise, look at  the mistakes you have made and
#      try not to make them in this new one.
#  [5] Remember that everyone makes mistakes. Programmers are like magicians who
#      fool everyone into  thinking they are perfect and never  wrong, but it is
#      all an act. They make mistakes all the time.
#
#  Print vs Puts
#  -------------
#  print does not add a new line after the string(s), whereas puts adds one.
print "Hello, "
puts "world!"


puts 'This is a #{"lie"}'	# The " (double-quotes) tells Ruby to replace varia-
puts "This is a #{'lie'}"   # bles it finds with #{}, but  the ' (single-quote),
							# tells  Ruby to  leave the  string alone and ignore
							# any variables inside it.

#  The Output of This is:
#  ----------------------
#  This is a #{"lie"}
#  This is a lie

