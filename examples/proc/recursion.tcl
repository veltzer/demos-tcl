#!/usr/bin/tclsh

proc sumUpTo {x} {
	if {$x == 0} {
		return 0
	} else {
		return [incr x [sumUpTo [expr {$x-1}]]]
	}
}

puts "result is [sumUpTo 10]"
