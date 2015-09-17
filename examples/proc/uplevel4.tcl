#!/usr/bin/tclsh

# An example using uplevel to implement a "do {} while {}"
# construct in tcl.
#
#		Mark Veltzer

proc do {body while_parm condition} {
	if {$while_parm ne "while"} {
		error "required word missing"
	}
	set conditionCmd [list expr $condition]
	while {1} {
		uplevel 1 $body
		if {![uplevel 1 $conditionCmd]} {
			break
		}
	}
}

set i 0
do {
	puts "i is $i"
	incr i
} while {$i<0}
