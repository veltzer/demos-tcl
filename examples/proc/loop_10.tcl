#!/usr/bin/tclsh

# An example of using 'uplevel' change callers variables...
#
#		Mark Veltzer

proc loop10 {body} {
	for {set i 0} {$i<10} {incr i} {
		uplevel 1 $body
	}
}

set z 5
loop10 {
	puts "z is $z"
	incr z 2
}
