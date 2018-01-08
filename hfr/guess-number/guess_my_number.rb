#!/usr/local/bin/ruby
# Guess My Number
# ------------------------------------------------------------------------------
# From: Head First Ruby


puts "Welcome to 'Get My Number!'"

# The difference between "puts" and "print" is  that "puts" adds a new-line cha-
# racter at the end of the line.

# Sometimes you don't have to specify a receiver for a method call.  For example
# in the "puts" "p" "print" methods. These methods are so important, and so com-
# monly used,that they have been included in Ruby's top-level execution environ-
# ment. Methods defined at this level are available to call anywhere in your Ru-
# by code, without specifying a receiver.

# The "puts" method can take more than one argument; just separate the arguments
# with commas. Each argument gets printed on its own line.
puts "first line", "second line", "third line"

print "What's your name? "

input = gets

puts "Welcome, #{input}"

