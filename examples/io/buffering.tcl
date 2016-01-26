#!/usr/bin/tclsh

puts -nonewline "In what city are you? "
flush stdout
set city [gets stdin]
puts "You are in $city..."
