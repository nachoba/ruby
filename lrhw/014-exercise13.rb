#   LEARN RUBY THE HARD WAY - 3 EDITION
#   ----------------------------------------------------------------------------
#   Exercise 13 : Parameters, Unpacking, Variables
#   ----------------------------------------------
#   In this exercise we will cover one more input method you can use to pass va-
#   riables to a script (script being another name for your .rb files). You know
#   how you type "ruby file_name.rb" to run the "file_name.rb" file.  But  well,
#   the "file_name.rb" part of the command is called an "argument". What we will
#   do now is write a script that also accepts arguments.

first, second, third = ARGV

puts "Your first  variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third  variable is: #{third}"

#   The ARGV is the "argument variable", a standard name in programming that you
#   will find used in many other languages.   This variable holds  the arguments 
#   you pass to your Ruby script when you run it.  In the exercises you will get
#   to play with this more and see what happens.
#
#   Line 1 "unpacks" ARGV so that, rather than holding all the arguments,it gets
#   assigned to three variables you can work with: first, second, and third.
#   This may look  strange, but "unpack" is probably  the best word  to describe
#   what it does. It just says, "take whatever is in ARGV, unpack it, and assign
#   it to all of these variables on the left in order".
#
#   After that we just print them out like normal. But pay attention on how you
#   run this script. Untill now you have been running ruby scripts without com-
#   mand line arguments.  If you type only "ruby file_name.rb" you are doing it
#   wrong! Pay close attention  to how I run it.  This applies any time you see
#   ARGV being used.
#
#
#   Study Drills
#   ------------
#   [1] Try giving fewer then three arguments to your script.
#   [2] Write a script that has fewer arguments and one that has more. Make sure
#       you give the unpacked variables good names.
#   [3] Change your script to  use "$stdin.gets.chomp"  everywhere that you have
#       "gets.chomp".  You should  use "$stdin.gets.chomp" from now on since the
#       action "gets.chomp" has problems with ARGV.
#   [4] Now  that you are using "$stdin.gets.chomp" (see #3) you can add ARGV to
#       your  script to get something from the user. Don't over think this. Just
#       use  ARGV to get one  thing,  then "$stdin.gets.chomp" to  get something
#       else.
#
#
#
#   Common Student Questions
#   ------------------------
#   [1] What's the difference between ARGV and gets.chomp?
#   The difference has to do with where the user is required  to give input.  If
#   they give your script inputs on the command line, then you use ARGV.  If you
#   want them to input using the keyboard while the script is running, then  use
#   "gets.chomp".
#

some_input = $stdin.gets.chomp
puts some_input

