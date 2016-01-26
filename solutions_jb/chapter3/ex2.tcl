#!/usr/bin/tclsh

# Solution to exercise 3.2

puts -nonewline "give me the first value "
flush stdout
set a [gets stdin]
puts -nonewline "give me the second value "
flush stdout
set b [gets stdin]
puts "the relation is [expr $a<$b]"
