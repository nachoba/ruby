#   LEARN RUBY THE HARD WAY - 3 EDITION
#   ----------------------------------------------------------------------------
#   Exercise 16 : Reading and Writing Files
#   ---------------------------------------
#   If you did the Study Drills from the last exercise, you should have seen all
#   sorts of commands (methods / functions)  you can  give to files. Here is the
#   list of commands I want you remember:
#
#       close           Closes the file. Like File -> Save in your editor.
#       read            Reads the contents of the file.  You can  assign  the re-
#                       sult to a variable.
#       readline        Read just one line of a text file.
#       truncate        Empites the file. Watch out if you care about the file.
#       write('stuff')  Writes "stuff" to the file.
#       seek(0)         Move the read / write  location to the  beginning of the
#                       file.
#
#   One way to remember  what each of these does is to think of a vinyl  record,
#   cassette tape, VHS tape,  DVD, or CD player. In the early days of computers,
#   data was stored on  each of these kinds of media, so many of the file opera-
#   tions still resemble a storage system that is linear.  Tape and  DVD  drives
#   need to "seek" a specific spot, and then you can read or write at that spot.
#   Today we have operating systems  and storage  media that blur  the lines be-
#   tween random access memory and  disk drives, but we still use the older idea
#   of a linear tape with a read/write head that must be moved.
#
#   For now, these  are the important  commands  you need to know.  Some of them
#   take parameters, but we do not really care about that.  You only need to re-
#   member that "write" takes a parameter  of a string  you want to write to the
#   file. 
#   Let's use some of this to make a simple little text editor:

filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)"
puts "If you do want that, hit RETURN"

$stdin.gets

puts "Opening the file..."
target = open(filename, 'w')

puts "Truncating the file. Goodbye!"
target.truncate(0)

puts "Now I'm going to ask you for three lines"

print "line 1: "
line1 = $stdin.gets.chomp

print "line 2: "
line2 = $stdin.gets.chomp

print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file"

target.write(line1)
target.write("\n")

target.write(line2)
target.write("\n")

target.write(line3)
target.write("\n")

puts "And finally, we close it"
target.close

#   That's a large file, probably the largest you have typed in. So go  slow, do
#   your  checks, and make it run. One  trick is to  get bits of it running at a
#   time.
#
#   Program Output
#   --------------
#   $ ruby 017-exercise16.rb test.txt
#   We're going to erase test.txt
#   If you don't want that, hit CTRL-C (^C)
#   If you do want that, hit RETURN
#
#   Opening the file...
#   Truncating the file. Goodbye!
#   line1: I am the first line.
#   line2: I am the second line.
#   line3: I am the third line.
#   I'm going to write these to the file.
#   And finally, we close it.
#
#
#   Now, open up the file you made (in this case "test.txt") in  your editor and
#   check it out.
#
#   Study Drills
#   ------------
#
