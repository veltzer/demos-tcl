#!/usr/bin/tclsh

# An example of using 'eval'
#
#		Mark Veltzer

puts -nonewline "give me a piece of code...: "
flush stdout
gets stdin code
eval $code
puts "z is $z"
