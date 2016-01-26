#!/usr/bin/tclsh

# Solution to exercise 3.2

puts -nonewline "give me the first value "
flush stdout
gets stdin a
puts -nonewline "give me the second value "
flush stdout
gets stdin b
puts "the relation is [expr $a<$b]"
gets stdin
