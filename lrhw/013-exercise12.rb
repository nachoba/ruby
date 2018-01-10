#   LEARN RUBY THE HARD WAY - 3 EDITION
#   ----------------------------------------------------------------------------
#   Exercise 12 : Prompting People for Numbers
#   ------------------------------------------
#   You may have noticed in Exercise 11, that you were getting  strings from the
#   user. How do you get numbers? Type this code in to find out how.
print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}."


#   See how adding a ".to_i" to the "gets.chomp" converts it to an integer.I can
#   also save what "gets.chomp" returns, and call ".to_i" on that, as I did with
#       
#   number = another.to_i
#
#
#
#
#   Study Drills
#   ------------
#   [1] Try out the ".to_f" operation. What does ".to_f" do?
#   [2] To play with ".to_f" more, make a small script that asks for  some money
#       and gives back 10% of it.  If I give  your script 103.4  (dollars), your
#       script gives me back 10.34 in change.


print "Give me some money: "
money = gets.chomp.to_f

puts "I give you back #{money * 0.10}"

