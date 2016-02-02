#!/usr/bin/tclsh

# An example of using 'uplevel' change callers variables...
#
#		Mark Veltzer

proc do {body whi cond} {
	uplevel 1 $body
	while {[uplevel 1 $cond]} {
		uplevel 1 $body
	}
}

set i 0
do {
	puts "i is $i"
	incr i
} while {$i<10}
