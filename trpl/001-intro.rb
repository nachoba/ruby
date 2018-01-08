#   THE RUBY PROGRAMMING LANGUAGE
#   ----------------------------------------------------------------------------
#   Chapter 1. Introduction
#   -----------------------
#
#
#
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


