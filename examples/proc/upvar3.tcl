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

proc two {} {
	set m 6
	puts "m is $m"
	three
	puts "m is $m"
}

proc three {} {
	upvar 2 z y
	set y 7
	upvar 1 m t
	set t 8
	#puts "y is $y"
}

one
