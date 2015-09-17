#!/usr/bin/tclsh

# An example of using 'uplevel' change callers variables...
#
#		Mark Veltzer

proc one {} {
	set z 5
	puts "z is $z"
	two {set z 7}
	puts "z is $z"
}

proc two {body} {
	uplevel 1 $body
}

one
