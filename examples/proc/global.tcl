#!/usr/bin/tclsh

set g 7
myproc
puts "g is $g"

proc myproc {} {
	global g
	puts "g is $g"
	set g 8
	puts "g is $g"
}
