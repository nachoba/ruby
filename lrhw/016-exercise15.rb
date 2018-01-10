#   LEARN RUBY THE HARD WAY - 3 EDITION
#   ----------------------------------------------------------------------------
#   Exercise 15 : Reading Files
#   ---------------------------
#   You know how to get input from  a user with "gets.chomp" or "ARGV".  Now you 
#   will learn about reading from a file.  You may have  to play with this exer-
#   cise the most to understand  what's going on, so  do the exercise  carefully
#   and remember your checks.  Working with files is an  easy way to  erase your
#   work if you are not careful.
#   This exercise involves writing two files. One is the usual 016-exercise15.rb
#   file that you will run, but the other will be named "016-sample.txt".
#   This second file is not a script but a plain text file we will be reading in
#   our script. Here are the contents of that file:
#
#   This is stuff I typed into a file.
#   It is really cool stuff.
#   Lots and lots of fun to have in here.
#
#   What we want to do is "open" that file in our script and print it out. Howe-
#   ver, we  do not want  to just "hard code" the name "016-sample.txt" into our
#   script. "Hard coding" means putting some bit of information that should come
#   from the user as a string directly in our source code. That's bad because we
#   want it to load other files later. The solution is to use ARGV or gest.chomp
#   to ask the user what file to open instead of "hard coding" the file's name.

filename = ARGV.first

txt = open(filename)

puts "Here's your file #{filename}:"
print txt.read

print "Type the filename again: "
file_again = $stdin.gets.chomp
txt_again = open(file_again)
print txt_again.read


#   A few fancy  things are going on in this file, so let us break it  down real
#   quickly:
#   [26] Uses ARGV to get a filename.
#   [28] We use a new command "open".   Use ri "File#open" and read the instruc-
#        tions. Notice how, like your own scripts and gets.chomp, it takes a pa-
#        rameter and returns a value you can set to your own variable.  You just
#        opened a file.
#   [30] Prints a little message, with the name of your file.
#   [31] We call a method on "txt" named ".read".  What you get back from "open"
#        is a file, and it also has commands you  can give it. You give a file a
#        command by using the "." (dot or period), the name  of the command, and
#        parameters, just like with "open" and "gets.chomp".   The difference is
#        that "txt.read" says "Hey txt do your read command with no parameters".
#
#   The remainder of the file is  more of the same, but we'll leave the analysis
#   to you in the Study Drills.
#
#   Warning
#   -------
#   Pay attention! I said pay attention! You have been running scripts with just
#   the name of the script, but now that you are using ARGV you have to add ar-
#   guments. Look at the very first line of the example below and you will see I
#   do:         ruby 016-exercise15.rb 016-sample.txt
#   to run it. See the extra argument  "016-sample.txt"  after  the name  of the
#   script "016-exercise15.rb". If you do not type that you will get an error so
#   pay attention!
#
#   Program Output
#   --------------
#   $ ruby 016-exercise15.rb 016-sample.txt
#   Here's your file 016-sample.txt
#   This is stuff I typed into a file.
#   It is really cool stuff.
#   Lots and lots of fun to have in here.
#   Type the filename again: 016-sample.txt
#   This is stuff I typed into a file.
#   It is really cool stuff.
#   Lots and lots of fun to have in here.
#
#
#
#
#   Study Drills
#   ------------
#   This is a big jump,so be sure you do this Study Drill as best you can before
#   moving on.
#   [1] Above each line, write out in english what that line does.
#   [2] If you are not sure, ask someone  for help or search  online. Many times
#       searching for "ruby THING" will  find answers to what that THING does in
#       Ruby. Try searching "ruby open".
#   [3] I used the word "commands" here,but commands are also called "functions"
#       and "methods". You will learn about functions and methods later.
#   [4] Get rid of the lines that ask for reading the file again.
#   [5] Use only gets.chomp and try the script  that way. Why is one way of get-
#       ting the filename better than another?
#   [6] Start "irb" to start the "irb" shell,and use "open" from the prompt just
#       like in this program. Notice how you can open files and run read on them
#       from within "irb"?
#   [7] Have your script also call "close()" on the "txt" and "txt_again" varia-
#       bles. It's important to close files when you are done with them.
#
#
#
#   Common Student Questions
#   ------------------------
#   [1] Does "txt = open(filename)" return the contents of the file?
#   No, it doesn't. It actually makes something called a "file object".  You can
#   think of a file like and old tape drive that you  saw on mainframe computers
#   in the 1950s or even like a DVD player from today.You can move around inside
#   them and then "read" them,but the DVD player is not the DVD the same way the
#   file object is not the file's contents.

#
