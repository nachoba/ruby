#   THE RUBY PROGRAMMING LANGUAGE
#   ----------------------------------------------------------------------------
#   Chapter 1. Introduction
#   -----------------------
#
#   Ruby is a dynamic programming language with  a complex but  expressive gram-
#   mar and a core class library with a rich and powerful API. Ruby draws inspi-
#   ration from Lisp, Smalltalk, and Perl, but uses a grammar that is easy for C
#   and Java programmers to learn.
#
#   Ruby is a pure object-oriented language,  but it is also suitable for proce-
#   dural and functional programming  styles.  It includes powerful metaprogram-
#   ming capabilities and can be used to create DSL.
#
#   The creator of Ruby is Yukihiro  Matsumoto.  His guiding philosophy when de-
#   signing Ruby is summarized in an oft-quoted remark of his:
#
#       "Ruby is designed bo make programmers happy."
#
#   [01] A Tour of Ruby
#   -------------------
#   This section is a guided,  but meandering, tour through some of the most in-
#   teresting features of Ruby. Everything discussed here will be  documented in
#   detail later.
#
#   Ruby is Object-Oriented
#   -----------------------
#   Ruby is a completely object-oriented language. Every value is an object,even
#   simple numeric literals and the values true, false, and nil (a special value
#   that indicates the abscence of value; it is Ruby's version of null).
#   Here we invoke a method named class on these values:

puts 1.class        #   => Integer
puts 0.0.class      #   => Float
puts true.class     #   => TrueClass
puts false.class    #   => FalseClass
puts nil.class      #   => NilClass

#   In Ruby, parentheses are  usually option when  invoking a method, especially 
#   when the method  being invoked takes  no arguments. The fact that the paren-
#   theses are omitted in the method invocations here makes them look like refe-
#   rences to named fields or named variables of the object. This is intentional
#   as Ruby is very strict about  encapsulation of its  objects; there is no ac-
#   cess to the internal  state of an object  from outside  the object. Any such
#   access must be mediated by an accessor method, such as the class method that
#   is shown above.
#
#   Blocks and Iterators
#   --------------------
#   The fact  that we can invoke methods on integers is not just an esoteric as-
#   pect of Ruby.  It is actually something that Ruby  programmers do with  some
#   frequency:

3.times { print "Ruby! " }      # prints "Ruby! Ruby! Ruby!"
1.upto(9) { | x | print x }     # prints 123456789

#   "times" and "upto" are methods  implemented by integer  objects.  They are a
#   special kind of method known as an iterator, and they behave like loops. The
#   code within  curly brackes -known as a block- is  associated with the method
#   invocation and serves as the body of the loop. 
#   The use of iterators and blocks is another notable feature of Ruby; although
#   the language does support and ordinary while loop, it is more common to per-
#   form loops with constructs that are actually method calls.
#
#   Integers are not the only values that have iterator methods. Arrays (and si-
#   milar "enumerable" objects) define an  iterator named "each",  which invokes
#   the associated block once for each element in the array.  Each invokation of
#   the block is passed a single element from the array:

a = [3, 2, 1]           # This is an array literal

a[3] = a[2] - 1         # Use square brackets to query and set array elements

a.each do |elt|         # each is an iterator. The block has a parameter "elt"
    print elt + 1       # prints 4321
end                     # This black was delimited with do/end instead of {}

#   Various other useful iterators are defined on top of "each":

b = [1, 2, 3, 4]        # Start with an array

c = b.map { |x| x * x } # Square elements. c = [1, 4, 9, 16]

d = b.select { |x|      # Select even elements. d = [2, 4]
    x%2 == 0 }          

b.inject do |sum, x|    # Compute the sum of the elements
    sum + x             #
end                     # => 10

# Hashes, like arrays, are a fundamental data structure  in Ruby.  As their name
# implies, they are based on the hashtable data  structure and serve to  map ar-
# bitrary key objects to value objects. To put this another way, we can say that
# a hash associates arbitrary value objects with key objects.
# Hashes use square brackets,  like arrays do,  to query and  set values  in the 
# hash. Instead  of using  an integer index, they expect key objects  within the
# square brackets.  Like  the  "Array" class, the  "Hash" class  also defines an
# "each" iterator method. This method invokes the associated  block of code once
# for each key/value pair in the hash, and (this is where it differs from Array)
# passes both, the key and the value as parameters to the block:

h = {                               # A hash that maps number names to digits
   :one     => 1,                   # The "arrows" show mappings: key => value
   :two     => 2,                   # The colons indicate Symbol literals
}

h[:one]                             # Access a value by key. => 1
h[:three] = 3                       # Add a new key/value pair to the hash

h.each do |key, value|              # Iterate through the key/value pairs
    print "#{value}:#{key}; "       # Note variables substituted into strings
end                                 # prints "1:one; 2:two; 3:three"

# Ruby's hashes can use any object as  a key, but "Symbol" objects  are the most
# commonly used. Symbols are immutable, interned  strings. They  can be compared
# by identity  rather than by textual  content (because two distinct  Symbol ob-
# jects will never have the same content).
# The ability to associate a block of code  with a method invocation is a funda-
# mental and very powerful feature of Ruby.
# Although its most obvious use is  for loop-like constructs,  it is also useful
# for methods that only invoke the block once. For example:

File.open("data.txt") do |f|    # Open named file and pass stream to block
    line = f.readline           # Use the stream to read from the file
end                             # Stream automatically closed at block end

t = Thread.new do               # Run this block in a new thread
    File.read("data.txt")       # Read a file in the background
end                             # File contents available as thread value

# As an aside, notice that  the "Hash.each" example previously included this in-
# teresting line of code:
#                           print "#{value}:#{key}; "
#
# Double-quoted strings can include  arbitrary Ruby expressions  delimited by #{
# and }.  The value of the expression within these  delimiters is converted to a 
# string (by calling its "to_s" method, which is supported by all objects).  The
# resulting string is then used to replace the expression text in its delimiters
# in the string literal.  This substitution of expression values  into string is
# usually called string interpolation.
#
# Expressions and Operators in Ruby
# ---------------------------------
#
