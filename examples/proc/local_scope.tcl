#!/usr/bin/tclsh

proc changeX {} {
	#puts "x is $x"
	#global set x 5
	set x 5
	puts "x is $x"
}
set x 7
puts "x is $x"
changeX
puts "x is $x"
