#  LEARN RUBY THE HARD WAY - 3 EDITION
#  -----------------------------------------------------------------------------
#  Exercise 10 : What Was That?
#  ----------------------------
#  In exercise 9 I threw  you some new  stuff, just to  keep you on your toes. I 
#  showed you two ways to make a string that goes across  multiple lines. In the
#  first  way, I put the characters "\n" (backslash n) between  the names of the
#  months. These two characters put a new line character into the string at that
#  point.
#
#  This "\"" (backslash) character encodes  difficult-to-type characters  into a
#  string.  There are various "escape sequences" available for different charac-
#  ters you might want to use. We'll try a few of these sequences so you can see
#  what I mean.
#  An important escape sequence is to escape a single-quote ' or double-quote ".
#  Imagine you have a string that uses double-quotes and you want to put a dou-
#  ble quote inside a string.  If you write "I "understand" joe." then Ruby will
#  get confused because it  will think  the " around "understand" actually  ends
#  the string. You need a way to tell Ruby that the " inside the string is not a
#  real double-quote.
#
#  To solve  this  problem you  escape  double-quotes and  single-quotes so Ruby
#  knows to include the in the string. Here's an example:
#
#   		"I am 6'2\" tall."			# escape double-quote inside string
#   		'I am 6\'2" tall.'			# escape single-quote inside string
