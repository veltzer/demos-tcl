#!/usr/bin/tclsh

# An example of using 'upvar' to access the callers variables...
#
#		Mark Veltzer

proc one {} {
	set z 5
	puts "z is $z"
	two
	puts "z is $z"
}

proc another_one {} {
	set z 5
	puts "z is $z"
	two
	puts "z is $z"
}

proc two {} {
	upvar 1 z y
	set y 7
	#puts "y is $y"
}

one
another_one
